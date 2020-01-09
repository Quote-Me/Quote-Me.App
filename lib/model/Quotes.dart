class Quotes {

  String quote;
  String author;
  String photo; 
  
  Quotes({this.quote, this.author, this.photo});
  
  factory Quotes.fromJson(Map<String, dynamic> json) {
    return Quotes(
      quote: json['quote'],
      author: json['author'],
      photo: json['photo']
    );
  }
}