import 'package:adf_cli/src/commands/students/students_command.dart';
import 'package:args/command_runner.dart';

void main(List<String> args) {
  // final argParser = ArgParser();
  // argParser.addFlag('data', abbr: 'd');
  // argParser.addOption("name", abbr: 'n');
  // argParser.addOption("template", abbr: 't');
  // argParser.parse(args);

  // final argResult = argParser.parse(args);
  // print("${argResult['data']}");
  // print("${argResult['name']}");
  // print("${argResult['template']}");
  CommandRunner('ADF CLI', 'ADF CLI')
    ..addCommand(StudentsCommand())
    ..run(args);
}
