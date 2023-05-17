import 'package:consumo_api_aluno/repositories/aluno_repository.dart';

Future<void> main(List<String> args) async {
  final alunoRepository = AlunoRepository();

  final alunos = await alunoRepository.buscarAlunos();

  print(alunos);

  final aluno = await alunoRepository.buscarPorId(1);

  print(aluno.nomeCursos);
  for (var curso in aluno.cursos) {
    print('${curso.nome} é aluno: ${curso.isAluno}');
  }
}
