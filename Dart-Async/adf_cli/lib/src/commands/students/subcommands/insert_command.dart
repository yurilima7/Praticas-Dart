import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../../repositories/product_repository.dart';
import '../../../../repositories/student_repository.dart';
import '../../../models/address.dart';
import '../../../models/city.dart';
import '../../../models/phone.dart';
import '../../../models/students.dart';

class InsertCommand extends Command {
  final StudentRepository studentRepository;
  final productRepository = ProductRepository();

  @override
  String get description => 'Insert Student';

  @override
  String get name => 'insert';

  InsertCommand(this.studentRepository) {
    argParser.addOption(
      'file',
      help: 'Path of the csv file',
      abbr: 'f',
    );
  }

  @override
  void run() async {
    print('Aguarde');
    final filePath = argResults?['file'];
    final students = File(filePath).readAsLinesSync();
    print('-------------------------------------------');

    for (var student in students) {
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

      studentRepository.insert(studentModel);
    }
  }
}
