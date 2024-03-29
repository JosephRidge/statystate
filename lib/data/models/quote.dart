class Quote {
  String? anime;
  String? character;
  String? quote;

  Quote({ this.anime, this.character, this.quote});

  Quote.fromJson(Map<String, dynamic> json) {
    anime = json['anime'];
    character = json['character'];
    quote = json['quote'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['anime'] = this.anime;
    data['character'] = this.character;
    data['quote'] = this.quote;
    return data;
  }
}