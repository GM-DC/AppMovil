class loginModel {
  final int? id_models;
  final String? usuario_models;
  final int? password_models;

  loginModel({
    this.id_models,
    this.usuario_models,
    this.password_models,
  });

  

  Map<String, dynamic> toMap() {
    return {
      'id_models': id_models,
      'usuario_models': usuario_models,
      'password_models': password_models,
    };
  }
}
