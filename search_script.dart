import 'package:search_script/api.dart';

void main() {
  summonerData();
}

Future<void> summonerData() async {
  var summonerCheck = await RiotApi().setSummonerData('ojoloco');

  if (summonerCheck) {
    var futures = <Future>[];

    futures.add(RiotApi().getMatchListByAccountId());
    await Future.wait(futures);
    //await RiotApi().getNamesList();
    await RiotApi().getInfoGames30();
  }
}
