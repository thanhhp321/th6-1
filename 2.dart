import 'dart:io';

class House {
  String? id;
  String? name;
  double? prize;

  House(this.id, this.name, this.prize);

  void nhap() {
    stdout.write("Nhap ID: ");
    id = stdin.readLineSync()!;
    stdout.write("Nhap ten: ");
    name = stdin.readLineSync()!;
    stdout.write("Nhap gia: ");
    prize = double.parse(stdin.readLineSync()!);
  }

  void xuat() {
    print("ID: $id");
    print("Name: $name");
    print("Prize: $prize");
    print("");
  }
}

void main() {
  List<House> ngoinha = [];

  for (int i = 1; i <= 3; i++) {
    print("Nhap thong tin cho ngoi nha thu $i:");
    String? id = stdin.readLineSync()!;
    String? name = stdin.readLineSync()!;
    double? prize = double.parse(stdin.readLineSync()!);

    House ho = House(id, name, prize);
    ngoinha.add(ho);
  }

  print("Thong tin tat ca cac ngoi nha:");
  for (House ho in ngoinha) {
    ho.xuat();
  }
}