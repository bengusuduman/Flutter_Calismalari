
import 'package:flutter/material.dart';

void main() {
  var urunler = List<String>.filled(5, '', growable: false); // 5 elemanlı sabit boyutlu bir liste

  urunler[0] = "Laptop";
  urunler[1] = "mouse";
  urunler[2] = "keyboard";
  urunler[3] = "monitor";
  urunler[4] = "Mic";

  print(urunler);

  var sehirler = ["ankara","istanbul", "izmir"];
  print(sehirler);
  sehirler.add("diyarbakır");
  print(sehirler);

  print(sehirler.where((s)=>s.contains("a")));
  print(sehirler.first);
}
