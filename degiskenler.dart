void main(){
  bool sistemeGirmisMi= false;
  //bool yerine va rda yazabiliriz
   if (sistemeGirmisMi== true) {
     print("anasayfaya gidildi");
   }
     else{
       print("login sayyfasına gidildi");
   }
     
     int puan= 75;
     if (puan>=50){
       print("geçti");
     }
     else if(puan>=40){
       print("büt");
     }
     else {
       print("kaldı");
     }


     String not ="C";
     // dart kücük büyük harf duyarlıdır
     switch(not){
       case "A" :{ print("süper");}
         break;
       case "B" :{ print("iyi");}
         break;
       case "C" :{ print("ok");}
         break;
       case "D" :{ print("kötü");}
         break;
       default: {print("bilinmiyor");}
         break;


     }
}