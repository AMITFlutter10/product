class Product{
  String? image;
  String? name;
  double? price;
  // constructor
  Product({this.image, this.name , this.price});
}
// dummy data
List <Product>dataProduct =[
  Product(image: "assets/images/picc3.png", name: "flower1", price: 20),
  Product(image: "assets/images/pic1.jpg" , name :"Note", price: 40),
  Product(image: "assets/images/picc3.png", name: "flower2", price: 50),
  Product(image: "assets/images/picc3.png", name: "flower1", price: 20),
  Product(image: "assets/images/pic1.jpg" , name :"Note", price: 40),

];