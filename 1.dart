  import 'dart:io';

class Laptop {
  String? id = null;
  String? name = null;
  int? ram = null;

  void nhap() {
    stdout.write("Nhap ID: ");
    id = stdin.readLineSync()!;
    stdout.write("Nhap ten: ");
    name = stdin.readLineSync()!;
    stdout.write("Nhap RAM (GB): ");
    ram = int.parse(stdin.readLineSync()!);
  }

  void xuat() {
    print("ID: $id");
    print("Name: $name");
    print("RAM: $ram GB");
    print("");
  }
}

void main() {
  print("Nhap thong tin cho laptop thu 1:");
  Laptop lt1 = Laptop();
  lt1.nhap();

  print("Nhap thong tin cho laptop thu 2:");
  Laptop lt2 = Laptop();
  lt2.nhap();

  print("Nhap thong tin cho laptop thu 3:");
  Laptop lt3 = Laptop();
  lt3.nhap();

  print("Thong tin tat ca cac laptop:");
  lt1.xuat();
  lt2.xuat();
  lt3.xuat();
}