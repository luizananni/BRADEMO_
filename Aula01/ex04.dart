class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  set id(int novoId) => _id = novoId;
  set marca(String novaMarca) => _marca = novaMarca;
  set cor(String novaCor) => _cor = novaCor;
  set preco(double novoPreco) => _preco = novoPreco;


  void mostrarDetalhes() {
    print("ID: \$id, Marca: \$marca, Cor: \$cor, Preço: R\$ \$preco");
  }
}

void main() {
  Camera camera1 = Camera(1, "Canon", "Preta", 3300.00);
  Camera camera2 = Camera(2, "Panasonic", "Prata", 4400.00);
  Camera camera3 = Camera(3, "Sony", "Preta", 5500.00);

  camera1.mostrarDetalhes();
  camera2.mostrarDetalhes();
  camera3.mostrarDetalhes();
}
