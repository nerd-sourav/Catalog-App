class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.imageUrl,
  });
}

final products = [
  Item(
      id: '001',
      name: 'iPhone 12 Pro Max',
      desc: 'iPhone 12th Generation',
      price: 1299,
      color: '#33505a',
      imageUrl:
          'https://www.citypng.com/public/uploads/preview/-115985227019opakxsfzx.png')
];
