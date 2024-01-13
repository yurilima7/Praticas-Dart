import 'dart:io';

import '../../../models/address.dart';
import '../../../models/city.dart';
import '../../../models/phone.dart';
import '../../../models/students.dart';
import 'package:args/command_runner.dart';

import '../../../../repositories/product_repository.dart';
import '../../../../repositories/student_repository.dart';

class UpdateCommand extends Command {
  final productRepository = ProductRepository();
  final StudentRepository studentRepository;

  @override
  String get description => 'Update Student';

  @override
  String get name => 'update';

  UpdateCommand(this.studentRepository) {
    argParser.addOption(
      'file',
      help: 'Path of the csv file',
      abbr: 'f',
    );

    argParser.addOption(
      'id',
      help: 'Student ID',
      abbr: 'i',
    );
  }

  @override
  void run() async {
    print('Aguarde');
    final filePath = argResults?['file'];
    final id = argResults?['id'];

    if (id == null) {
      print('Por favor informe o id do aluno com o comando -id=0 ou -i 0');
      return;
    }

    final students = File(filePath).readAsLinesSync();
    print('-------------------------------------------');

    if (students.length > 1) {
      print('Por favor informe somente um aluno no arquivo $filePath');
      return;
    } else if (students.isEmpty) {
      print('Por favor informe um aluno no arquivo $filePath');
      return;
    }

    var student = students.first;

    final studentData = student.split(';');
    final courseCSV = studentData[2].split(',').map((e) => e.trim()).toList();

    final coursesFutures = courseCSV.map((c) async {
      final course = await productRepository.findByName(c);

      // course.isStudent = true;
      return course;
    }).toList();

    final courses = await Future.wait(coursesFutures);
    print(courses);

    final studentModel = Students(
      id: int.parse(id),
      name: studentData[0],
      age: int.tryParse(studentData[1]),
      nameCourses: courseCSV,
      courses: courses,
      address: Address(
        street: studentData[3],
        number: int.parse(studentData[4]),
        zipCode: studentData[5],
        city: City(
          id: 1,
          name: studentData[6],
        ),
        phone: Phone(
          ddd: int.parse(studentData[7]),
          phone: studentData[8],
        ),
      ),
    );

    studentRepository.update(studentModel);
  }
}
