class House {
  int id;
  String nome;
  double preco;

  House(this.id, this.nome, this.preco);

  void mostrarDetalhes() {
    print("ID: \$id, Nome: \$nome, Preço: R\$ \$preco");
  }
}

void main() {
  House house1 = House(1, "Casa laranja", 500000.00);
  House house2 = House(2, "Casa cinza", 850000.00);
  House house3 = House(3, "Casa azul", 1000000.00);

  List<House> casas = [house1, house2, house3];

  for (var casa in casas) {
    casa.mostrarDetalhes();
  }
}