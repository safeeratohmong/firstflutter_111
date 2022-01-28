class  Like {
  String? thName;
  // String? enName;
  int? price;
  bool? checked;

  //Constructor
  Like(this.thName,this.price, this.checked);

  static getLike() {
    return [
     Like('ชาบู', 269, true),
      Like('ข้าวผัดทะเล', 55, false),
      Like('ก๋วยเตี๋ยวเย็นตาโฟ',  59, false),
      Like('มะม่วงปั่นโยเกิร์ต',  39, true),
      Like('ชานมไข่มุก',  49, false),
    ];
  }
}