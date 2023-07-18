class Product{
  final int id , price ;
  final String titel , subtitel  , description  , image  ;



  Product({required this.id,required this.price,required this.titel,required this.subtitel,required this.description,required this.image});
 
}


//list the product

List<Product> products = [
  Product(
    id: 1,
    price: 20,
    titel: "سماعات لاسلكيه ",
    subtitel: "جوده صوت عاليه",
    image: "images/airpod.png",
     description: 'dd'
  ),
    Product(
    id: 2,
    price: 230,
    titel: "كيمرا ",
    subtitel: "وضوح ودقه عاليه ",
    image: "images/camera.png",
     description: 'dd'
  ),
    Product(
    id: 3,
    price: 330,
    titel: "نظاره (3D)",
    subtitel: "جود هممتازه واضحه ",
    image: "images/class.png",
     description: 'dd'
  ),
    Product(
    id: 4,
    price: 20,
    titel: " سماعات بلوتوث  ",
    subtitel: "جوده صوت عاليه",
    image: "images/headset.png",
     description: 'dd'
  ),
    Product(
    id: 5,
    price: 600,
    titel: "iphone 11",
    subtitel: "جهاز نظيف  جدا",
    image: "images/mobile.png",
     description: 'dd'
  ),
    Product(
    id: 6,
    price: 100,
    titel: " مبخره كهرباء",
    subtitel: "مده طويله ورااحه نقيه ",
    image: "images/speaker.png",
     description: 'dd'
  )
];