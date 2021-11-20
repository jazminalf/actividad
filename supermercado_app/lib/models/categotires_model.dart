class Category {
  final String title;
  final String image;

  Category({required this.image, required this.title});
}

List<Category> categories = <Category>[
  Category(image: 'assets/images/verduras1.jpg', title: 'Verduras'),
  Category(image: 'assets/images/frutas1.jpg', title: 'Frutas'),
  Category(image: 'assets/images/carnes1.jpg', title: 'Carnes'),
  Category(image: 'assets/images/graz1.jpg', title: 'Granos y Azucares'),
  Category(image: 'assets/images/limpieza.jpg', title: 'Articulos de limpieza'),
  Category(image: 'assets/images/cereales.png', title: 'Cereales'),
  Category(image: 'assets/images/belleza.jpg', title: 'Articulos de belleza'),
  Category(image: 'assets/images/higiene.jpg', title: 'Articulos de higiene'),
  Category(image: 'assets/images/mascotas.jpg', title: 'Mascotas'),
  Category(image: 'assets/images/lacteos.jpg', title: 'Lacteos'),  
  Category(image: 'assets/images/farmacia.png', title: 'Articulos de farmacia'),  
  Category(image: 'assets/images/alcohol.jpg', title: 'Bebidas Alcoholicas'),  
  Category(image: 'assets/images/botanas.jpg', title: 'Botanas y Bebidas'),  
  Category(image: 'assets/images/salsascon.jpg', title: 'Consomes y salsas'), 
  Category(image: 'assets/images/aceites.jpg', title: 'Aceites'),   
];
