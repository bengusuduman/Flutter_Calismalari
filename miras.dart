void main() {
  PersonelManager personelManager = PersonelManager();
  personelManager.add();

  var customerManager = CustomerManager();
  Customer customer1 = Customer.withInfo("bengü", "duman"); // Constructor ile değer atama
  customerManager.add(customer1); // customer1 olarak değiştirildi

  var customer2 = Customer(); // Bu satır düzeltildi
  customer2.firstName = "eNGİN";
  customer2.lastName = "demiroğ"; // Noktalı virgül eklendi
  customerManager.add(customer2);
}

class PersonelManager {
  void add() {
    print("eklendi");
  }

  void update() {
    print("güncellendi");
  }

  void delete() {
    print("silindi");
  }
}

class CustomerManager {
  void add(Customer customer) {
    print("eklendi: " + customer.firstName);
  }

  void update() {
    print("güncellendi");
  }

  void delete() {
    print("silindi");
  }
}

class Customer extends Person {
  Customer();

  Customer.withInfo(String firstname, String lastName) {
    this.firstName = firstname;
    this.lastName = lastName;
  } // Bu fonksiyonun kapatılması gerektiği için kapatıldı
}

class Personel extends Person { // extends Person diyince Personel'in aynı zamanda bir kişi olduğunu gösterdik
  late int dateOfStart;

  Personel();

  Personel.withInfo(String firstname, String lastName, int dateOfStart) {
    this.firstName = firstname;
    this.lastName = lastName;
    this.dateOfStart = dateOfStart;
  }
}

class Person {
  late String firstName;
  late String lastName;
}