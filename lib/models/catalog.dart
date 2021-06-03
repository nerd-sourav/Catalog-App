class CatalogModal {
  static final items = [
    Item(
        id: '001',
        name: 'iPhone 12 Pro Max',
        desc: 'iPhone 12th Generation',
        price: 1299,
        color: '#33505a',
        imageUrl:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
  ];
}

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
