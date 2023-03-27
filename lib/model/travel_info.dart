class Travel {
  String name;
  String address;
  String img;
  String review;
  String rating;
  String direction;
  String sunny;
  String descriptions;
  String dollar;

  Travel(this.name, this.address, this.img, this.review, this.descriptions,
      this.direction, this.dollar, this.rating, this.sunny);

  static List<Travel> generatedTravelInfoList() {
    return [
      Travel(
          "Nusa Penida",
          "Bail, Indonesia",
          "images/nusa.jpg",
          "2k review",
          "Nusa Penida is an island located in the southeastern Indonesian island of Bali and a district of Klungkung Regency that includes the neighboring small island of Nusa Lembongan and twelve even smaller islands. The Bandung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali. It is one of the major tourist attractions among the three Nusa islands.",
          "7km",
          "349",
          "4.8",
          "20°C"),
      Travel(
          "Raja Ampat",
          "Lombok, Indonesia",
          "images/raja.jpg",
          "3k review",
          "The Raja Ampat Islands are located in a far off land, and if you want to visit, it requires one arduous journey. Raja Ampat is a group of islands on the western tip of Papua in Indonesia, famous for its diving experience. Most of the world's coral reefs biodiversity and rare species of marine life can easily be found in an archipelago about the size of Switzerland. While there are 612 islands, there are four major islands that have a population center: Waigeo, Misool (which is home to ancient rock paintings), Salawati, and Batanta.",
          "9km",
          "430",
          "8.2",
          "22°C"),
      Travel(
          "Nusa Penida",
          "Bail, Indonesia",
          "images/nusa.jpg",
          "2k review",
          "Nusa Penida is an island located in the southeastern Indonesian island of Bali and a district of Klungkung Regency that includes the neighboring small island of Nusa Lembongan and twelve even smaller islands. The Bandung Strait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum altitude of 524 metres. It is drier than the nearby island of Bali. It is one of the major tourist attractions among the three Nusa islands.",
          "7km",
          "349",
          "4.8",
          "20°C"),
      Travel(
          "Raja Ampat",
          "Lombok, Indonesia",
          "images/raja.jpg",
          "3k review",
          "The Raja Ampat Islands are located in a far off land, and if you want to visit, it requires one arduous journey. Raja Ampat is a group of islands on the western tip of Papua in Indonesia, famous for its diving experience. Most of the world's coral reefs biodiversity and rare species of marine life can easily be found in an archipelago about the size of Switzerland. While there are 612 islands, there are four major islands that have a population center: Waigeo, Misool (which is home to ancient rock paintings), Salawati, and Batanta.",
          "9km",
          "430",
          "8.2",
          "22°C"),
    ];
  }
}
