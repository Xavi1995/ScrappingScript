class League {
  String leagueId;
  String queueType;
  String tier;
  String rank;
  String summonerId;
  String summonerName;
  int leaguePoints;
  int wins;
  int losses;
  bool veteran;
  bool inactive;
  bool freshBlood;
  bool hotStreak;

  League(
      {this.leagueId,
      this.queueType,
      this.tier,
      this.rank,
      this.summonerId,
      this.summonerName,
      this.leaguePoints,
      this.wins,
      this.losses,
      this.veteran,
      this.inactive,
      this.freshBlood,
      this.hotStreak});

  League.fromJson(Map<String, dynamic> json) {
    leagueId = json['leagueId'];
    queueType = json['queueType'];
    tier = json['tier'];
    rank = json['rank'];
    summonerId = json['summonerId'];
    summonerName = json['summonerName'];
    leaguePoints = json['leaguePoints'];
    wins = json['wins'];
    losses = json['losses'];
    veteran = json['veteran'];
    inactive = json['inactive'];
    freshBlood = json['freshBlood'];
    hotStreak = json['hotStreak'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['leagueId'] = this.leagueId;
    data['queueType'] = this.queueType;
    data['tier'] = this.tier;
    data['rank'] = this.rank;
    data['summonerId'] = this.summonerId;
    data['summonerName'] = this.summonerName;
    data['leaguePoints'] = this.leaguePoints;
    data['wins'] = this.wins;
    data['losses'] = this.losses;
    data['veteran'] = this.veteran;
    data['inactive'] = this.inactive;
    data['freshBlood'] = this.freshBlood;
    data['hotStreak'] = this.hotStreak;
    return data;
  }
}