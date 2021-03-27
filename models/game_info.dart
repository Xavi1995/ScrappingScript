class GameInfo {
  int gameId;
  String platformId;
  int gameCreation;
  int gameDuration;
  int queueId;
  int mapId;
  int seasonId;
  String gameVersion;
  String gameMode;
  String gameType;
  List<Teams> teams;
  List<Participants> participants;
  List<ParticipantIdentities> participantIdentities;

  GameInfo(
      {this.gameId,
      this.platformId,
      this.gameCreation,
      this.gameDuration,
      this.queueId,
      this.mapId,
      this.seasonId,
      this.gameVersion,
      this.gameMode,
      this.gameType,
      this.teams,
      this.participants,
      this.participantIdentities});

  GameInfo.fromJson(Map<String, dynamic> json) {
    gameId = json['gameId'];
    platformId = json['platformId'];
    gameCreation = json['gameCreation'];
    gameDuration = json['gameDuration'];
    queueId = json['queueId'];
    mapId = json['mapId'];
    seasonId = json['seasonId'];
    gameVersion = json['gameVersion'];
    gameMode = json['gameMode'];
    gameType = json['gameType'];
    if (json['teams'] != null) {
      teams = new List<Teams>();
      json['teams'].forEach((v) {
        teams.add(new Teams.fromJson(v));
      });
    }
    if (json['participants'] != null) {
      participants = new List<Participants>();
      json['participants'].forEach((v) {
        participants.add(new Participants.fromJson(v));
      });
    }
    if (json['participantIdentities'] != null) {
      participantIdentities = new List<ParticipantIdentities>();
      json['participantIdentities'].forEach((v) {
        participantIdentities.add(new ParticipantIdentities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gameId'] = this.gameId;
    data['platformId'] = this.platformId;
    data['gameCreation'] = this.gameCreation;
    data['gameDuration'] = this.gameDuration;
    data['queueId'] = this.queueId;
    data['mapId'] = this.mapId;
    data['seasonId'] = this.seasonId;
    data['gameVersion'] = this.gameVersion;
    data['gameMode'] = this.gameMode;
    data['gameType'] = this.gameType;
    if (this.teams != null) {
      data['teams'] = this.teams.map((v) => v.toJson()).toList();
    }
    if (this.participants != null) {
      data['participants'] = this.participants.map((v) => v.toJson()).toList();
    }
    if (this.participantIdentities != null) {
      data['participantIdentities'] =
          this.participantIdentities.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Teams {
  int teamId;
  String win;
  bool firstBlood;
  bool firstTower;
  bool firstInhibitor;
  bool firstBaron;
  bool firstDragon;
  bool firstRiftHerald;
  int towerKills;
  int inhibitorKills;
  int baronKills;
  int dragonKills;
  int vilemawKills;
  int riftHeraldKills;
  int dominionVictoryScore;
  List<Bans> bans;

  Teams(
      {this.teamId,
      this.win,
      this.firstBlood,
      this.firstTower,
      this.firstInhibitor,
      this.firstBaron,
      this.firstDragon,
      this.firstRiftHerald,
      this.towerKills,
      this.inhibitorKills,
      this.baronKills,
      this.dragonKills,
      this.vilemawKills,
      this.riftHeraldKills,
      this.dominionVictoryScore,
      this.bans});

  Teams.fromJson(Map<String, dynamic> json) {
    teamId = json['teamId'];
    win = json['win'];
    firstBlood = json['firstBlood'];
    firstTower = json['firstTower'];
    firstInhibitor = json['firstInhibitor'];
    firstBaron = json['firstBaron'];
    firstDragon = json['firstDragon'];
    firstRiftHerald = json['firstRiftHerald'];
    towerKills = json['towerKills'];
    inhibitorKills = json['inhibitorKills'];
    baronKills = json['baronKills'];
    dragonKills = json['dragonKills'];
    vilemawKills = json['vilemawKills'];
    riftHeraldKills = json['riftHeraldKills'];
    dominionVictoryScore = json['dominionVictoryScore'];
    if (json['bans'] != null) {
      bans = new List<Bans>();
      json['bans'].forEach((v) {
        bans.add(new Bans.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['teamId'] = this.teamId;
    data['win'] = this.win;
    data['firstBlood'] = this.firstBlood;
    data['firstTower'] = this.firstTower;
    data['firstInhibitor'] = this.firstInhibitor;
    data['firstBaron'] = this.firstBaron;
    data['firstDragon'] = this.firstDragon;
    data['firstRiftHerald'] = this.firstRiftHerald;
    data['towerKills'] = this.towerKills;
    data['inhibitorKills'] = this.inhibitorKills;
    data['baronKills'] = this.baronKills;
    data['dragonKills'] = this.dragonKills;
    data['vilemawKills'] = this.vilemawKills;
    data['riftHeraldKills'] = this.riftHeraldKills;
    data['dominionVictoryScore'] = this.dominionVictoryScore;
    if (this.bans != null) {
      data['bans'] = this.bans.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bans {
  int championId;
  int pickTurn;

  Bans({this.championId, this.pickTurn});

  Bans.fromJson(Map<String, dynamic> json) {
    championId = json['championId'];
    pickTurn = json['pickTurn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['championId'] = this.championId;
    data['pickTurn'] = this.pickTurn;
    return data;
  }
}

class Participants {
  int participantId;
  int teamId;
  int championId;
  int spell1Id;
  int spell2Id;
  Stats stats;
  Timeline timeline;

  Participants(
      {this.participantId,
      this.teamId,
      this.championId,
      this.spell1Id,
      this.spell2Id,
      this.stats,
      this.timeline});

  Participants.fromJson(Map<String, dynamic> json) {
    participantId = json['participantId'];
    teamId = json['teamId'];
    championId = json['championId'];
    spell1Id = json['spell1Id'];
    spell2Id = json['spell2Id'];
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    timeline = json['timeline'] != null
        ? new Timeline.fromJson(json['timeline'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['participantId'] = this.participantId;
    data['teamId'] = this.teamId;
    data['championId'] = this.championId;
    data['spell1Id'] = this.spell1Id;
    data['spell2Id'] = this.spell2Id;
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    if (this.timeline != null) {
      data['timeline'] = this.timeline.toJson();
    }
    return data;
  }
}

class Stats {
  int participantId;
  bool win;
  int item0;
  int item1;
  int item2;
  int item3;
  int item4;
  int item5;
  int item6;
  int kills;
  int deaths;
  int assists;
  int largestKillingSpree;
  int largestMultiKill;
  int killingSprees;
  int longestTimeSpentLiving;
  int doubleKills;
  int tripleKills;
  int quadraKills;
  int pentaKills;
  int unrealKills;
  int totalDamageDealt;
  int magicDamageDealt;
  int physicalDamageDealt;
  int trueDamageDealt;
  int largestCriticalStrike;
  int totalDamageDealtToChampions;
  int magicDamageDealtToChampions;
  int physicalDamageDealtToChampions;
  int trueDamageDealtToChampions;
  int totalHeal;
  int totalUnitsHealed;
  int damageSelfMitigated;
  int damageDealtToObjectives;
  int damageDealtToTurrets;
  int visionScore;
  int timeCCingOthers;
  int totalDamageTaken;
  int magicalDamageTaken;
  int physicalDamageTaken;
  int trueDamageTaken;
  int goldEarned;
  int goldSpent;
  int turretKills;
  int inhibitorKills;
  int totalMinionsKilled;
  int neutralMinionsKilled;
  int neutralMinionsKilledTeamJungle;
  int neutralMinionsKilledEnemyJungle;
  int totalTimeCrowdControlDealt;
  int champLevel;
  int visionWardsBoughtInGame;
  int sightWardsBoughtInGame;
  int wardsPlaced;
  int wardsKilled;
  bool firstBloodKill;
  bool firstBloodAssist;
  bool firstTowerKill;
  bool firstTowerAssist;
  bool firstInhibitorKill;
  bool firstInhibitorAssist;
  int combatPlayerScore;
  int objectivePlayerScore;
  int totalPlayerScore;
  int totalScoreRank;
  int playerScore0;
  int playerScore1;
  int playerScore2;
  int playerScore3;
  int playerScore4;
  int playerScore5;
  int playerScore6;
  int playerScore7;
  int playerScore8;
  int playerScore9;
  int perk0;
  int perk0Var1;
  int perk0Var2;
  int perk0Var3;
  int perk1;
  int perk1Var1;
  int perk1Var2;
  int perk1Var3;
  int perk2;
  int perk2Var1;
  int perk2Var2;
  int perk2Var3;
  int perk3;
  int perk3Var1;
  int perk3Var2;
  int perk3Var3;
  int perk4;
  int perk4Var1;
  int perk4Var2;
  int perk4Var3;
  int perk5;
  int perk5Var1;
  int perk5Var2;
  int perk5Var3;
  int perkPrimaryStyle;
  int perkSubStyle;
  int statPerk0;
  int statPerk1;
  int statPerk2;

  Stats(
      {this.participantId,
      this.win,
      this.item0,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.item5,
      this.item6,
      this.kills,
      this.deaths,
      this.assists,
      this.largestKillingSpree,
      this.largestMultiKill,
      this.killingSprees,
      this.longestTimeSpentLiving,
      this.doubleKills,
      this.tripleKills,
      this.quadraKills,
      this.pentaKills,
      this.unrealKills,
      this.totalDamageDealt,
      this.magicDamageDealt,
      this.physicalDamageDealt,
      this.trueDamageDealt,
      this.largestCriticalStrike,
      this.totalDamageDealtToChampions,
      this.magicDamageDealtToChampions,
      this.physicalDamageDealtToChampions,
      this.trueDamageDealtToChampions,
      this.totalHeal,
      this.totalUnitsHealed,
      this.damageSelfMitigated,
      this.damageDealtToObjectives,
      this.damageDealtToTurrets,
      this.visionScore,
      this.timeCCingOthers,
      this.totalDamageTaken,
      this.magicalDamageTaken,
      this.physicalDamageTaken,
      this.trueDamageTaken,
      this.goldEarned,
      this.goldSpent,
      this.turretKills,
      this.inhibitorKills,
      this.totalMinionsKilled,
      this.neutralMinionsKilled,
      this.neutralMinionsKilledTeamJungle,
      this.neutralMinionsKilledEnemyJungle,
      this.totalTimeCrowdControlDealt,
      this.champLevel,
      this.visionWardsBoughtInGame,
      this.sightWardsBoughtInGame,
      this.wardsPlaced,
      this.wardsKilled,
      this.firstBloodKill,
      this.firstBloodAssist,
      this.firstTowerKill,
      this.firstTowerAssist,
      this.firstInhibitorKill,
      this.firstInhibitorAssist,
      this.combatPlayerScore,
      this.objectivePlayerScore,
      this.totalPlayerScore,
      this.totalScoreRank,
      this.playerScore0,
      this.playerScore1,
      this.playerScore2,
      this.playerScore3,
      this.playerScore4,
      this.playerScore5,
      this.playerScore6,
      this.playerScore7,
      this.playerScore8,
      this.playerScore9,
      this.perk0,
      this.perk0Var1,
      this.perk0Var2,
      this.perk0Var3,
      this.perk1,
      this.perk1Var1,
      this.perk1Var2,
      this.perk1Var3,
      this.perk2,
      this.perk2Var1,
      this.perk2Var2,
      this.perk2Var3,
      this.perk3,
      this.perk3Var1,
      this.perk3Var2,
      this.perk3Var3,
      this.perk4,
      this.perk4Var1,
      this.perk4Var2,
      this.perk4Var3,
      this.perk5,
      this.perk5Var1,
      this.perk5Var2,
      this.perk5Var3,
      this.perkPrimaryStyle,
      this.perkSubStyle,
      this.statPerk0,
      this.statPerk1,
      this.statPerk2});

  Stats.fromJson(Map<String, dynamic> json) {
    participantId = json['participantId'];
    win = json['win'];
    item0 = json['item0'];
    item1 = json['item1'];
    item2 = json['item2'];
    item3 = json['item3'];
    item4 = json['item4'];
    item5 = json['item5'];
    item6 = json['item6'];
    kills = json['kills'];
    deaths = json['deaths'];
    assists = json['assists'];
    largestKillingSpree = json['largestKillingSpree'];
    largestMultiKill = json['largestMultiKill'];
    killingSprees = json['killingSprees'];
    longestTimeSpentLiving = json['longestTimeSpentLiving'];
    doubleKills = json['doubleKills'];
    tripleKills = json['tripleKills'];
    quadraKills = json['quadraKills'];
    pentaKills = json['pentaKills'];
    unrealKills = json['unrealKills'];
    totalDamageDealt = json['totalDamageDealt'];
    magicDamageDealt = json['magicDamageDealt'];
    physicalDamageDealt = json['physicalDamageDealt'];
    trueDamageDealt = json['trueDamageDealt'];
    largestCriticalStrike = json['largestCriticalStrike'];
    totalDamageDealtToChampions = json['totalDamageDealtToChampions'];
    magicDamageDealtToChampions = json['magicDamageDealtToChampions'];
    physicalDamageDealtToChampions = json['physicalDamageDealtToChampions'];
    trueDamageDealtToChampions = json['trueDamageDealtToChampions'];
    totalHeal = json['totalHeal'];
    totalUnitsHealed = json['totalUnitsHealed'];
    damageSelfMitigated = json['damageSelfMitigated'];
    damageDealtToObjectives = json['damageDealtToObjectives'];
    damageDealtToTurrets = json['damageDealtToTurrets'];
    visionScore = json['visionScore'];
    timeCCingOthers = json['timeCCingOthers'];
    totalDamageTaken = json['totalDamageTaken'];
    magicalDamageTaken = json['magicalDamageTaken'];
    physicalDamageTaken = json['physicalDamageTaken'];
    trueDamageTaken = json['trueDamageTaken'];
    goldEarned = json['goldEarned'];
    goldSpent = json['goldSpent'];
    turretKills = json['turretKills'];
    inhibitorKills = json['inhibitorKills'];
    totalMinionsKilled = json['totalMinionsKilled'];
    neutralMinionsKilled = json['neutralMinionsKilled'];
    neutralMinionsKilledTeamJungle = json['neutralMinionsKilledTeamJungle'];
    neutralMinionsKilledEnemyJungle = json['neutralMinionsKilledEnemyJungle'];
    totalTimeCrowdControlDealt = json['totalTimeCrowdControlDealt'];
    champLevel = json['champLevel'];
    visionWardsBoughtInGame = json['visionWardsBoughtInGame'];
    sightWardsBoughtInGame = json['sightWardsBoughtInGame'];
    wardsPlaced = json['wardsPlaced'];
    wardsKilled = json['wardsKilled'];
    firstBloodKill = json['firstBloodKill'];
    firstBloodAssist = json['firstBloodAssist'];
    firstTowerKill = json['firstTowerKill'];
    firstTowerAssist = json['firstTowerAssist'];
    firstInhibitorKill = json['firstInhibitorKill'];
    firstInhibitorAssist = json['firstInhibitorAssist'];
    combatPlayerScore = json['combatPlayerScore'];
    objectivePlayerScore = json['objectivePlayerScore'];
    totalPlayerScore = json['totalPlayerScore'];
    totalScoreRank = json['totalScoreRank'];
    playerScore0 = json['playerScore0'];
    playerScore1 = json['playerScore1'];
    playerScore2 = json['playerScore2'];
    playerScore3 = json['playerScore3'];
    playerScore4 = json['playerScore4'];
    playerScore5 = json['playerScore5'];
    playerScore6 = json['playerScore6'];
    playerScore7 = json['playerScore7'];
    playerScore8 = json['playerScore8'];
    playerScore9 = json['playerScore9'];
    perk0 = json['perk0'];
    perk0Var1 = json['perk0Var1'];
    perk0Var2 = json['perk0Var2'];
    perk0Var3 = json['perk0Var3'];
    perk1 = json['perk1'];
    perk1Var1 = json['perk1Var1'];
    perk1Var2 = json['perk1Var2'];
    perk1Var3 = json['perk1Var3'];
    perk2 = json['perk2'];
    perk2Var1 = json['perk2Var1'];
    perk2Var2 = json['perk2Var2'];
    perk2Var3 = json['perk2Var3'];
    perk3 = json['perk3'];
    perk3Var1 = json['perk3Var1'];
    perk3Var2 = json['perk3Var2'];
    perk3Var3 = json['perk3Var3'];
    perk4 = json['perk4'];
    perk4Var1 = json['perk4Var1'];
    perk4Var2 = json['perk4Var2'];
    perk4Var3 = json['perk4Var3'];
    perk5 = json['perk5'];
    perk5Var1 = json['perk5Var1'];
    perk5Var2 = json['perk5Var2'];
    perk5Var3 = json['perk5Var3'];
    perkPrimaryStyle = json['perkPrimaryStyle'];
    perkSubStyle = json['perkSubStyle'];
    statPerk0 = json['statPerk0'];
    statPerk1 = json['statPerk1'];
    statPerk2 = json['statPerk2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['participantId'] = this.participantId;
    data['win'] = this.win;
    data['item0'] = this.item0;
    data['item1'] = this.item1;
    data['item2'] = this.item2;
    data['item3'] = this.item3;
    data['item4'] = this.item4;
    data['item5'] = this.item5;
    data['item6'] = this.item6;
    data['kills'] = this.kills;
    data['deaths'] = this.deaths;
    data['assists'] = this.assists;
    data['largestKillingSpree'] = this.largestKillingSpree;
    data['largestMultiKill'] = this.largestMultiKill;
    data['killingSprees'] = this.killingSprees;
    data['longestTimeSpentLiving'] = this.longestTimeSpentLiving;
    data['doubleKills'] = this.doubleKills;
    data['tripleKills'] = this.tripleKills;
    data['quadraKills'] = this.quadraKills;
    data['pentaKills'] = this.pentaKills;
    data['unrealKills'] = this.unrealKills;
    data['totalDamageDealt'] = this.totalDamageDealt;
    data['magicDamageDealt'] = this.magicDamageDealt;
    data['physicalDamageDealt'] = this.physicalDamageDealt;
    data['trueDamageDealt'] = this.trueDamageDealt;
    data['largestCriticalStrike'] = this.largestCriticalStrike;
    data['totalDamageDealtToChampions'] = this.totalDamageDealtToChampions;
    data['magicDamageDealtToChampions'] = this.magicDamageDealtToChampions;
    data['physicalDamageDealtToChampions'] =
        this.physicalDamageDealtToChampions;
    data['trueDamageDealtToChampions'] = this.trueDamageDealtToChampions;
    data['totalHeal'] = this.totalHeal;
    data['totalUnitsHealed'] = this.totalUnitsHealed;
    data['damageSelfMitigated'] = this.damageSelfMitigated;
    data['damageDealtToObjectives'] = this.damageDealtToObjectives;
    data['damageDealtToTurrets'] = this.damageDealtToTurrets;
    data['visionScore'] = this.visionScore;
    data['timeCCingOthers'] = this.timeCCingOthers;
    data['totalDamageTaken'] = this.totalDamageTaken;
    data['magicalDamageTaken'] = this.magicalDamageTaken;
    data['physicalDamageTaken'] = this.physicalDamageTaken;
    data['trueDamageTaken'] = this.trueDamageTaken;
    data['goldEarned'] = this.goldEarned;
    data['goldSpent'] = this.goldSpent;
    data['turretKills'] = this.turretKills;
    data['inhibitorKills'] = this.inhibitorKills;
    data['totalMinionsKilled'] = this.totalMinionsKilled;
    data['neutralMinionsKilled'] = this.neutralMinionsKilled;
    data['neutralMinionsKilledTeamJungle'] =
        this.neutralMinionsKilledTeamJungle;
    data['neutralMinionsKilledEnemyJungle'] =
        this.neutralMinionsKilledEnemyJungle;
    data['totalTimeCrowdControlDealt'] = this.totalTimeCrowdControlDealt;
    data['champLevel'] = this.champLevel;
    data['visionWardsBoughtInGame'] = this.visionWardsBoughtInGame;
    data['sightWardsBoughtInGame'] = this.sightWardsBoughtInGame;
    data['wardsPlaced'] = this.wardsPlaced;
    data['wardsKilled'] = this.wardsKilled;
    data['firstBloodKill'] = this.firstBloodKill;
    data['firstBloodAssist'] = this.firstBloodAssist;
    data['firstTowerKill'] = this.firstTowerKill;
    data['firstTowerAssist'] = this.firstTowerAssist;
    data['firstInhibitorKill'] = this.firstInhibitorKill;
    data['firstInhibitorAssist'] = this.firstInhibitorAssist;
    data['combatPlayerScore'] = this.combatPlayerScore;
    data['objectivePlayerScore'] = this.objectivePlayerScore;
    data['totalPlayerScore'] = this.totalPlayerScore;
    data['totalScoreRank'] = this.totalScoreRank;
    data['playerScore0'] = this.playerScore0;
    data['playerScore1'] = this.playerScore1;
    data['playerScore2'] = this.playerScore2;
    data['playerScore3'] = this.playerScore3;
    data['playerScore4'] = this.playerScore4;
    data['playerScore5'] = this.playerScore5;
    data['playerScore6'] = this.playerScore6;
    data['playerScore7'] = this.playerScore7;
    data['playerScore8'] = this.playerScore8;
    data['playerScore9'] = this.playerScore9;
    data['perk0'] = this.perk0;
    data['perk0Var1'] = this.perk0Var1;
    data['perk0Var2'] = this.perk0Var2;
    data['perk0Var3'] = this.perk0Var3;
    data['perk1'] = this.perk1;
    data['perk1Var1'] = this.perk1Var1;
    data['perk1Var2'] = this.perk1Var2;
    data['perk1Var3'] = this.perk1Var3;
    data['perk2'] = this.perk2;
    data['perk2Var1'] = this.perk2Var1;
    data['perk2Var2'] = this.perk2Var2;
    data['perk2Var3'] = this.perk2Var3;
    data['perk3'] = this.perk3;
    data['perk3Var1'] = this.perk3Var1;
    data['perk3Var2'] = this.perk3Var2;
    data['perk3Var3'] = this.perk3Var3;
    data['perk4'] = this.perk4;
    data['perk4Var1'] = this.perk4Var1;
    data['perk4Var2'] = this.perk4Var2;
    data['perk4Var3'] = this.perk4Var3;
    data['perk5'] = this.perk5;
    data['perk5Var1'] = this.perk5Var1;
    data['perk5Var2'] = this.perk5Var2;
    data['perk5Var3'] = this.perk5Var3;
    data['perkPrimaryStyle'] = this.perkPrimaryStyle;
    data['perkSubStyle'] = this.perkSubStyle;
    data['statPerk0'] = this.statPerk0;
    data['statPerk1'] = this.statPerk1;
    data['statPerk2'] = this.statPerk2;
    return data;
  }
}

class Timeline {
  int participantId;
  CreepsPerMinDeltas creepsPerMinDeltas;
  CreepsPerMinDeltas xpPerMinDeltas;
  CreepsPerMinDeltas goldPerMinDeltas;
  CreepsPerMinDeltas damageTakenPerMinDeltas;
  String role;
  String lane;
  CreepsPerMinDeltas csDiffPerMinDeltas;
  CreepsPerMinDeltas xpDiffPerMinDeltas;
  CreepsPerMinDeltas damageTakenDiffPerMinDeltas;

  Timeline(
      {this.participantId,
      this.creepsPerMinDeltas,
      this.xpPerMinDeltas,
      this.goldPerMinDeltas,
      this.damageTakenPerMinDeltas,
      this.role,
      this.lane,
      this.csDiffPerMinDeltas,
      this.xpDiffPerMinDeltas,
      this.damageTakenDiffPerMinDeltas});

  Timeline.fromJson(Map<String, dynamic> json) {
    participantId = json['participantId'];
    creepsPerMinDeltas = json['creepsPerMinDeltas'] != null
        ? new CreepsPerMinDeltas.fromJson(json['creepsPerMinDeltas'])
        : null;
    xpPerMinDeltas = json['xpPerMinDeltas'] != null
        ? new CreepsPerMinDeltas.fromJson(json['xpPerMinDeltas'])
        : null;
    goldPerMinDeltas = json['goldPerMinDeltas'] != null
        ? new CreepsPerMinDeltas.fromJson(json['goldPerMinDeltas'])
        : null;
    damageTakenPerMinDeltas = json['damageTakenPerMinDeltas'] != null
        ? new CreepsPerMinDeltas.fromJson(json['damageTakenPerMinDeltas'])
        : null;
    role = json['role'];
    lane = json['lane'];
    csDiffPerMinDeltas = json['csDiffPerMinDeltas'] != null
        ? new CreepsPerMinDeltas.fromJson(json['csDiffPerMinDeltas'])
        : null;
    xpDiffPerMinDeltas = json['xpDiffPerMinDeltas'] != null
        ? new CreepsPerMinDeltas.fromJson(json['xpDiffPerMinDeltas'])
        : null;
    damageTakenDiffPerMinDeltas = json['damageTakenDiffPerMinDeltas'] != null
        ? new CreepsPerMinDeltas.fromJson(json['damageTakenDiffPerMinDeltas'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['participantId'] = this.participantId;
    if (this.creepsPerMinDeltas != null) {
      data['creepsPerMinDeltas'] = this.creepsPerMinDeltas.toJson();
    }
    if (this.xpPerMinDeltas != null) {
      data['xpPerMinDeltas'] = this.xpPerMinDeltas.toJson();
    }
    if (this.goldPerMinDeltas != null) {
      data['goldPerMinDeltas'] = this.goldPerMinDeltas.toJson();
    }
    if (this.damageTakenPerMinDeltas != null) {
      data['damageTakenPerMinDeltas'] = this.damageTakenPerMinDeltas.toJson();
    }
    data['role'] = this.role;
    data['lane'] = this.lane;
    if (this.csDiffPerMinDeltas != null) {
      data['csDiffPerMinDeltas'] = this.csDiffPerMinDeltas.toJson();
    }
    if (this.xpDiffPerMinDeltas != null) {
      data['xpDiffPerMinDeltas'] = this.xpDiffPerMinDeltas.toJson();
    }
    if (this.damageTakenDiffPerMinDeltas != null) {
      data['damageTakenDiffPerMinDeltas'] =
          this.damageTakenDiffPerMinDeltas.toJson();
    }
    return data;
  }
}

class CreepsPerMinDeltas {
  var d1020;
  var d010;

  CreepsPerMinDeltas({this.d1020, this.d010});

  CreepsPerMinDeltas.fromJson(Map<String, dynamic> json) {
    d1020 = json['10-20'];
    d010 = json['0-10'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['10-20'] = this.d1020;
    data['0-10'] = this.d010;
    return data;
  }
}

class ParticipantIdentities {
  Player player;
  int participantId;

  ParticipantIdentities({this.participantId, this.player});

  ParticipantIdentities.fromJson(Map<String, dynamic> json) {
    participantId = json['participantId'];
    player =
        json['player'] != null ? new Player.fromJson(json['player']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['participantId'] = this.participantId;
    if (this.player != null) {
      data['player'] = this.player.toJson();
    }
    return data;
  }
}

class Player {
  String platformId;
  String accountId;
  String summonerName;
  String summonerId;
  String currentPlatformId;
  String currentAccountId;
  String matchHistoryUri;
  int profileIcon;

  Player(
      {this.platformId,
      this.accountId,
      this.summonerName,
      this.summonerId,
      this.currentPlatformId,
      this.currentAccountId,
      this.matchHistoryUri,
      this.profileIcon});

  Player.fromJson(Map<String, dynamic> json) {
    platformId = json['platformId'];
    accountId = json['accountId'];
    summonerName = json['summonerName'];
    summonerId = json['summonerId'];
    currentPlatformId = json['currentPlatformId'];
    currentAccountId = json['currentAccountId'];
    matchHistoryUri = json['matchHistoryUri'];
    profileIcon = json['profileIcon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['platformId'] = this.platformId;
    data['accountId'] = this.accountId;
    data['summonerName'] = this.summonerName;
    data['summonerId'] = this.summonerId;
    data['currentPlatformId'] = this.currentPlatformId;
    data['currentAccountId'] = this.currentAccountId;
    data['matchHistoryUri'] = this.matchHistoryUri;
    data['profileIcon'] = this.profileIcon;
    return data;
  }
}