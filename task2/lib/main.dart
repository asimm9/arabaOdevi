import 'arabaClass.dart';
import 'dart:math';
import 'dart:collection';

void main(List<String> args) {
  List<araba> cars = List.empty(growable: true);
  araba newCar1 = araba("reno", "megane", 2020, 1000000);
  araba newCar2 = araba("toyota", "corolla", 2010, 2000000);
  araba newCar3 = araba("opel", "astra", 2015, 700000);
  araba newCar4 = araba("honda", "civic", 2018, 955000);
  araba newCar5 = araba("volvo", "xc90", 2017, 1500000);
  cars.add(newCar1);
  cars.add(newCar2);
  cars.add(newCar3);
  cars.add(newCar4);
  cars.add(newCar5);
  for (araba oAnkiAraba in cars) {
    print(oAnkiAraba);
  }
  var largestPrice = cars[0].fiyat;
  var smallestPrice = cars[0].fiyat;
  for (var i = 0; i < cars.length; i++) {
    if (cars[i].fiyat > largestPrice) {
      largestPrice = cars[i].fiyat;
    }
    if (cars[i].fiyat < smallestPrice) {
      smallestPrice = cars[i].fiyat;
    }
  }
  print("bu listedeki en pahaları araç: " + largestPrice.toString() + " tl");
  print("bu listedeki en ucuz araç: " + smallestPrice.toString() + " tl");
  List<int> yasListesi = List.empty(growable: true);
  var arabaYasi = 0;
  for (var i = 0; i < cars.length; i++) {
    arabaYasi = 2022 - cars[i].uretimYili;
    yasListesi.add(arabaYasi);
  }
  var oldestcar = yasListesi[0];
  var smallestcar = yasListesi[0];
  for (var i = 0; i < yasListesi.length; i++) {
    if (yasListesi[i] > oldestcar) {
      oldestcar = yasListesi[i];
    }
    if (yasListesi[i] < smallestcar) {
      smallestcar = yasListesi[i];
    }
  }
  print("bu listedeki en yaşlı araç: $oldestcar yaşında");
  print("bu listedeki en genç araç: $smallestcar yaşında");

/* print(yasListesi.reduce((value, element) => value> element?value:element));
print(yasListesi.reduce((value, element) => value< element?value:element)); */
//mehmet aliye bunu sor.
  var sonFiyat = 0;
  for (var i = 0; i < cars.length; i++) {
    sonFiyat = cars[i].fiyat - cars[i].uretimYili;
    print("${cars[i].marka}'nin fiyatı $sonFiyat tl");
  }
}
