class UiModel {
  String name;
  String imageurl;
  String disc;
  int price;
  double review;
  UiModel(
      {required this.review,
      required this.name,
      required this.imageurl,
      required this.disc,
      required this.price});

  static List<UiModel> uiData = [
    UiModel(
        name: "kashmir",
        imageurl: 'assets/kashmir (4).jpg',
        disc:
            "Pakistan, located in South Asia, is a diverse country boasting rich cultural heritage and breathtaking landscapes. With a population exceeding 220 million, it is the fifth most populous nation in the world. Pakistan shares borders with India, Afghanistan, Iran, and China, and is known for its historical sites, vibrant cities, and diverse cuisine. The country gained independence in 1947, following the partition of British India, and has since emerged as a key player in regional politics and economics.",
        price: 500,
        review: 4.5),
    UiModel(
        name: "Bali",
        imageurl: 'assets/Bali.jpg',
        disc: "Pakistan, located in South Asia, is a diverse country boasting rich cultural heritage and breathtaking landscapes. With a population exceeding 220 million, it is the fifth most populous nation in the world. Pakistan shares borders with India, Afghanistan, Iran, and China, and is known for its historical sites, vibrant cities, and diverse cuisine. The country gained independence in 1947, following the partition of British India, and has since emerged as a key player in regional politics and economics.",
        price: 1500,
        review: 4.5),
    UiModel(
        name: "IslamAbad",
        imageurl: 'assets/islamabad.jpg',
        disc: "Pakistan, located in South Asia, is a diverse country boasting rich cultural heritage and breathtaking landscapes. With a population exceeding 220 million, it is the fifth most populous nation in the world. Pakistan shares borders with India, Afghanistan, Iran, and China, and is known for its historical sites, vibrant cities, and diverse cuisine. The country gained independence in 1947, following the partition of British India, and has since emerged as a key player in regional politics and economics.",
        price: 200,
        review: 4.9),
    UiModel(
        name: "kashmore",
        imageurl: 'assets/kashmore.jpg',
        disc: "Pakistan, located in South Asia, is a diverse country boasting rich cultural heritage and breathtaking landscapes. With a population exceeding 220 million, it is the fifth most populous nation in the world. Pakistan shares borders with India, Afghanistan, Iran, and China, and is known for its historical sites, vibrant cities, and diverse cuisine. The country gained independence in 1947, following the partition of British India, and has since emerged as a key player in regional politics and economics.",
        price: 150,
        review: 3.5),
    UiModel(
        name: "Mumbai",
        imageurl: 'assets/kashmir (1).jpg',
        disc: "Pakistan, located in South Asia, is a diverse country boasting rich cultural heritage and breathtaking landscapes. With a population exceeding 220 million, it is the fifth most populous nation in the world. Pakistan shares borders with India, Afghanistan, Iran, and China, and is known for its historical sites, vibrant cities, and diverse cuisine. The country gained independence in 1947, following the partition of British India, and has since emerged as a key player in regional politics and economics.",
        price: 1500,
        review: 4.1),
  ];
}
