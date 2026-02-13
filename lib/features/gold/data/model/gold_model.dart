class GoldModel {
  final String name;
  final num price;
  final String sybmol;
  final String updateAt;
  final String updateAtReadble;

  GoldModel({
    required this.name,
    required this.price,
    required this.sybmol,
    required this.updateAt,
    required this.updateAtReadble,
  });
  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json['name'],
      price: json['price'],
      sybmol: json['symbol'],
      updateAt: json['updatedAt'],
      updateAtReadble: json['updatedAtReadable'],
    );
  }
}
