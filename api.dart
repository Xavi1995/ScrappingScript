import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:search_script/models/game_info.dart';
import 'package:search_script/models/summoner.dart';
import 'package:search_script/utils.dart';

import 'models/league.dart';
import 'models/match.dart';
import 'models/searching_result.dart';

class RiotApi {
  Map summonerData;
  static List<Map<String, dynamic>> players = [];
  static List<GameInfo> gameInfoList = [];
  static List<String> playerNames = [];

  static String apiKey = 'RGAPI-d51ec40b-ea22-49e8-b3f3-59d532fbc35e';
  static String riotUrl = 'euw1.api.riotgames.com';

  Future<bool> setSummonerData(String summonerName) async {
    var response = await http.get(
        Uri.https(
            riotUrl,
            Uri.encodeFull('lol/summoner/v4/summoners/by-name/$summonerName'),
            {'api_key': apiKey}),
        headers: {'Accept': 'application/json'});
    if (response.statusCode == 200) {
      summonerData = json.decode(response.body);
      print('Summoner Name: ${summonerData['name'].toString()}');
      Utils.summonerData = Summoner.fromJson(json.decode(response.body));
      return true;
    } else {
      return false;
    }
  }

  Future<void> getLeagueBySummoner(String summonerId) async {
    var response = await http.get(
      Uri.https(
        riotUrl,
        'lol/league/v4/entries/by-summoner/$summonerId',
        {'api_key': apiKey},
      ),
    );
    print('Get league by summoner: ${response.statusCode}');
    if (response.statusCode == 200) {
      var list = json.decode(response.body) as List;
      Utils.leagueData = list.map((i) => League.fromJson(i)).toList();
    }
  }

  Future getInfoGames30() async {
    String soloQrank;
    String soloQtier;
    String flexQrank;
    String flexQtier;

    var count = 0;

    for (var i = 46; i < 92; i++) {
      Directory.current;
      await RiotApi()
          .setSummonerData(Utils.playersTofetch1[i]); //Utils.summonerData
      await RiotApi().getLeagueBySummoner(Utils.summonerData.id);

      if (Utils.leagueData.length == 1) {
        if (Utils.leagueData[0].queueType == 'RANKED_SOLO_5x5') {
          soloQrank = Utils.leagueData[0].rank;
          soloQtier = Utils.leagueData[0].tier;
        } else {
          flexQrank = Utils.leagueData[0].rank;
          flexQtier = Utils.leagueData[0].tier;
        }
      } else if (Utils.leagueData.length == 2) {
        var soloIndex = Utils.leagueData
            .indexWhere((element) => element.queueType == 'RANKED_SOLO_5x5');
        var flexIndex = Utils.leagueData
            .indexWhere((element) => element.queueType == 'RANKED_FLEX_SR');
        soloQrank = Utils.leagueData[soloIndex].rank;
        soloQtier = Utils.leagueData[soloIndex].tier;
        flexQrank = Utils.leagueData[flexIndex].rank;
        flexQtier = Utils.leagueData[flexIndex].tier;
      }
      //Utils.leagueData
      var player = SearchingResult(Utils.playersTofetch[i],
          nfuqScore: 0.0,
          tags: [1, 2, 3],
          soloQtier: soloQtier,
          soloQrank: soloQrank,
          flexQrank: flexQrank,
          flexQtier: flexQtier,
          profileIcon: Utils.summonerData.profileIconId);

      players.add(player.toJson());

      print('${count++}');
    }
    await fileOperations(
      players.toString(),
    );
    print(players);
  }

  Future<void> fileOperations(String content) async {
    var file = File(Platform.script.toFilePath());
    print(file);
    var f = File('D:/Uni/TFG/SearchingScript/search_script/lib/names1.json');
    await f.writeAsString(content);
  }

  Future<void> getMatchListByAccountId() async {
    var accountID = Utils.summonerData.accountId;
    var response = await http.get(
        Uri.https(
          riotUrl,
          'lol/match/v4/matchlists/by-account/$accountID',
          {'api_key': apiKey},
        ),
        headers: {'Accept': 'application/json'});

    print('Match list fetched : ${response.statusCode}');

    var matches = Matches.fromJson(json.decode(response.body));
    Utils.listMatches = matches.matches;
  }

  Future<void> getMatchDataById(int matchId) async {
    var response = await http.get(
        Uri.https(
          riotUrl,
          'lol/match/v4/matches/$matchId',
          {'api_key': apiKey},
        ),
        headers: {'Accept': 'application/json'});

    print(response.statusCode);
    if (response.statusCode != 200) {
      print('Response Code  : ${response.statusCode}');
      return null;
    }
    var match = GameInfo.fromJson(json.decode(response.body));
    Utils.gameInfo = match;
  }

  Future<void> getNamesList() async {
    var count = 0;
    for (var i = 30; i < 60; i++) {
      print(Utils.listMatches[i].gameId);
      await RiotApi().getMatchDataById(Utils.listMatches[i].gameId);
      gameInfoList.add(Utils.gameInfo);

      print('Id game: ${Utils.listMatches[i].gameId}');
      print('Game number: $count');
      count++;
    }

    for (var i = 0; i < gameInfoList.length; i++) {
      for (var j = 0; j < gameInfoList[i].participantIdentities.length; j++) {
        playerNames
            .add(gameInfoList[i].participantIdentities[j].player.summonerName);
        print(
            '${gameInfoList[i].participantIdentities[j].player.summonerName}');
      }
    }

    print('${playerNames.length}');
    var noRepePlayerNamesList = playerNames.toSet().toList();
    await fileOperations(noRepePlayerNamesList.toString());

    print('${noRepePlayerNamesList.length}');
  }
}
