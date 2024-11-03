import 'dart:ui';

void main(){
  var dictionary1 = new Map();
  dictionary1["book"]="kitap";
  dictionary1["little"]="küçük";


  var dictionary2 = {"kitap": "book", "küçük": "little"} ;
  dictionary2 ["buyuk"]="big";

  print(dictionary1);
  print(dictionary2);


  dictionary1.remove("book");
  print(dictionary1);

  for(var key in dictionary2.keys){
    print(key + ":" + dictionary2[key].toString());

  for(var value in dictionary2.values){
    print(value);
  }
  print(dictionary2.containsKey("keyboard"));
  
  dictionary2.forEach((k,v)=>{
  print(k + ":" + v)
  });

  }

}