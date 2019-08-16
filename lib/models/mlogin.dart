class Login{
  int id;
  String usuario;
  String senha;

  Login(this.id, this.usuario,this.senha);

  Login.fromJson(Map<String,dynamic> json){
    this.id=json["id"];
    this.usuario=json["usuario"];
    this.senha=json["senha"];
  }
}