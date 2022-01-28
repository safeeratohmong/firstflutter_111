class Year {
  String? thName;
  //String? enName;
  //int? price;
  //int? year;
  String? yearValue;

  //Constructor
  Year(this.thName,);

  static getYear() {
    return [
      Year('ปีที่  1'),
      Year('ปีที่  2'),
      Year('ปีที่  3' ),
      Year('ปีที่  4'),

    ];
  }
}