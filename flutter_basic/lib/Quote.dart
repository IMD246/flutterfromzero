class Quote {
  late String author;
  late String text;
  Quote(String author, String text) {
    this.author = author;
    this.text = text;
  }
  String get getAuthor => author;
  String get getText => text;
}
