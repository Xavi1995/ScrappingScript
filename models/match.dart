class Matches {
  List<Game> matches;
  int startIndex;
  int endIndex;
  int totalGames;

  Matches(
      {this.matches, this.startIndex, this.endIndex, this.totalGames});

  Matches.fromJson(Map<String, dynamic> json) {
    if (json['matches'] != null) {
      matches = new List<Game>();
      json['matches'].forEach((v) {
        matches.add(new Game.fromJson(v));
      });
    }
    startIndex = json['startIndex'];
    endIndex = json['endIndex'];
    totalGames = json['totalGames'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.matches != null) {
      data['matches'] = this.matches.map((v) => v.toJson()).toList();
    }
    data['startIndex'] = this.startIndex;
    data['endIndex'] = this.endIndex;
    data['totalGames'] = this.totalGames;
    return data;
  }
}

class Game {
  String platformId;
  int gameId;
  int champion;
  int queue;
  int season;
  int timestamp;
  String role;
  String lane;

  Game(
      {this.platformId,
      this.gameId,
      this.champion,
      this.queue,
      this.season,
      this.timestamp,
      this.role,
      this.lane});

  Game.fromJson(Map<String, dynamic> json) {
    platformId = json['platformId'];
    gameId = json['gameId'];
    champion = json['champion'];
    queue = json['queue'];
    season = json['season'];
    timestamp = json['timestamp'];
    role = json['role'];
    lane = json['lane'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['platformId'] = this.platformId;
    data['gameId'] = this.gameId;
    data['champion'] = this.champion;
    data['queue'] = this.queue;
    data['season'] = this.season;
    data['timestamp'] = this.timestamp;
    data['role'] = this.role;
    data['lane'] = this.lane;
    return data;
  }
}