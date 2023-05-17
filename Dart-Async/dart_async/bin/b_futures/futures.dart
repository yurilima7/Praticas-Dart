void main(List<String> args) {
  Future((){
    // função executada
  }).then((value) {
    // registrando função que será executada quando o futuro for completado com sucesso!
  }).catchError((error) {
     // registrando função que será executada quando o futuro for completado com erro!
  }).whenComplete(() {
    // registrando função que será executada Sempre com erro ou sem erro!
  });
}
