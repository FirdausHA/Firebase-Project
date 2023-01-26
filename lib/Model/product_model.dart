class Product{
  final String name;
  final double price;
  final String imageUrl;

  const Product(  {
   required this.name,
   required this.price,
   required this.imageUrl,
  });

  static const List<Product> Products = [
    Product(
        name: 'Banana',
        price: 2.99,
        imageUrl: 'https://www.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-600w-1722111529.jpg'),
    Product(
        name: 'Apple',
        price: 2.99,
        imageUrl: 'https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600w-278516402.jpg'),
    Product(
        name: 'Grapes',
        price: 2.99,
        imageUrl: 'https://www.shutterstock.com/image-photo/blue-wet-isabella-grapes-bunch-600w-220836805.jpg'),
  ];
}