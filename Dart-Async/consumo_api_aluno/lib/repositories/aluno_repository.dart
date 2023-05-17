import 'dart:convert';

import 'package:consumo_api_aluno/models/aluno.dart';
import 'package:http/http.dart' as http;

class AlunoRepository {
  Future<List<Aluno>> buscarAlunos() async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:8080/alunos'));

    final alunosList = jsonDecode(alunosResponse.body);

    // final todosAlunos = alunosList.map<Aluno>((alunoMap) {
    //   return Aluno.fromMap(alunoMap);
    // }).toList();

    // return todosAlunos;
    return alunosList
        .map<Aluno>((alunoMap) => Aluno.fromMap(alunoMap))
        .toList();
  }

  Future<Aluno> buscarPorId(int id) async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:8080/alunos/$id'));

    return Aluno.fromJson(alunosResponse.body);
  }
}
