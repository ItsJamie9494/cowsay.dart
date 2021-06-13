import 'package:args/args.dart';

const cow = """
        \\   ^__^
         \\  (oo)\\_______
            (__)\\       )\\/\\
                ||----w |
                ||     ||
""";

String border(String text, String character) {
  var border = '';
  for (var i = 0; i < text.length + 2; i++) {
    border = '$border$character';
  }
  return border;
}
void main(List<String> arguments) {
  var parser = ArgParser();
  var results = parser.parse(arguments);

  var message = '';
  for (var i = 0; i < results.rest.length; i++) {
    message = '$message${results.rest[i]} ';
  }
  print(' ${border(message, '_')} ');
  print('< ${message.trim()} >');
  print(' ${border(message, '-')} ');
  print(cow);
}
