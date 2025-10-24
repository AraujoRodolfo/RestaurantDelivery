
class Usuario{

  int? _codigo;
  String? _nome;
  String? _login;
  String? _senha;


Usuario({int? cod, String? n, String? l, String? s}){
  _codigo = cod;
  _nome = n;
  _login = l;
  _senha = s;
}

  int? get codigo => _codigo;
  String? get nome => _nome;
  String? get login => _login;
  String? get senha {
    return _senha;
  }

  set codigo(int? codigo) => _codigo = codigo;
  set login(String? valor) => _login = valor;
  set senha(String? valor) => _senha = valor;

  set nome(String? nome){
    _nome = nome;
  }

}