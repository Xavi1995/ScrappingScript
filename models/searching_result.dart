class SearchingResult {
  String name;
  double nfuqScore;
  List<int> tags;
  String soloQtier;
  String soloQrank;
  String flexQtier;
  String flexQrank;
  int profileIcon;

  SearchingResult(this.name,
      {this.nfuqScore,
      this.tags,
      this.soloQtier,
      this.soloQrank,
      this.flexQrank,
      this.flexQtier,
      this.profileIcon});

  Map<String, dynamic> toJson() {
    
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['nfuqScore'] = this.nfuqScore == null ? '' : this.nfuqScore;
    if (this.tags != null) {
      data['tags'] = this.tags.toList();
    } else {
      data['tags'] = [];
    }
    data['soloQtier'] = this.soloQtier == null ? '' : this.soloQtier;
    data['soloQrank'] = this.soloQrank == null ? '' : this.soloQrank;
    data['flexQtier'] = this.flexQtier == null ? '' : this.flexQtier;
    data['flexQrank'] = this.flexQrank == null ? '' : this.flexQrank;
    data['profileIcon'] = this.profileIcon == null ? 0 : this.profileIcon;
    print(data);
    return data;
  }
}
