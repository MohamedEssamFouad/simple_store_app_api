class product_model{
  final dynamic id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final Rating_Model? rating;
  final String category;
  product_model({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.description,
    required this.image,
    required this.rating});
  factory product_model.fromJson(jsonData){
     return product_model(id: jsonData['id'],
       category: jsonData['category'],
         title: jsonData['title'],
         price: jsonData['price'],
         image: jsonData['image'],
       description: jsonData['description'],
         rating: Rating_Model.fromJson(jsonData['rating']));

  }
}class Rating_Model{
  final dynamic rate;
  final int count;
  Rating_Model({
    required this.rate,
    required this.count,
});
  factory Rating_Model.fromJson(jsonData){
    return Rating_Model(rate: jsonData['rate'], count: jsonData['count'],);
  }
}