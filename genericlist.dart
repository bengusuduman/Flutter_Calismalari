void main(){

  // type safety
  List<String> sehirler = List.filled(3, ''); // 3 elemanlı boş bir liste oluşturur

  sehirler[0] = "ankara";
  sehirler[1] = "istanbul";
  sehirler[2] = "tokat";

  print(sehirler);
  List urunler=["laptop","mouse","keyboard"];
  print(urunler);


  var  product1 =Product("tv",500);
  var product2 =Product("mikrodalga",650);
  List<Product> products = [product1,product2];
  print(products[0].name+""+products[0].unitPrice.toString());
}

class Product{
  late String name;
  late double unitPrice;

  Product(String name, double unitPrice ){
    this.name=name;
    this.unitPrice = unitPrice;
  }
}
