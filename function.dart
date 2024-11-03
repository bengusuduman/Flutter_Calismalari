
void main() {
  selamVer2("engin");
  selamVer2("engin");
  selamVer2("engin");
  selamVer2("bengü ");
  selamVer2("engin");
  selamVer2("engin");

  var hesapSonucu = hesapla(10000, 15);
  print(hesapSonucu);

  test1(1); // sayi2 ve sayi3 varsayılan olarak 0 olacak
}

void selamVer() {
  print("merhaba");
}

void selamVer2(String kullanici) {
  print("selam " + kullanici);
}

double hesapla(double krediTutari, double yuzde) {
  var sonuc = krediTutari * yuzde / 100;
  return sonuc;
}

void test1(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
  print(sayi1); // 1
  print(sayi2); // 0
  print(sayi3); // 0
}
