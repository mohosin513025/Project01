class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
    id: "prd001",
    name: "Asus zenphone max",
    desc: "two gb ram with sixteen gb rom",
    price: 12300,
    color: "#330250",
    image:
        "https://www.gadgetshieldz.com/images/detailed/224/Asus_Zenfone_Max_Pro__M1__ZB601KL_Maximum_Protection_Ultra_Clear.png",
  )
];
