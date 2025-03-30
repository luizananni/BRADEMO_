class Laptop {
  int id;
  String nome;
  String ram;

  Laptop(this.id, this.nome, this.ram);

  void mostrarDetalhes() {
    print("ID: \$id, Nome: \$nome, RAM: \$ram");
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "Vaio", "8GB");
  Laptop laptop2 = Laptop(2, "Dell", "18GB");
  Laptop laptop3 = Laptop(3, "Lenovo", "8GB");

  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}