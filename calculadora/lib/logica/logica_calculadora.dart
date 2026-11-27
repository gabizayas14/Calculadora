import 'package:math_expressions/math_expressions.dart';

class LogicaCalculadora {

  String calcular(String expression) {
    try {
      final parser = GrammarParser();
      final exp = parser.parse(expression.replaceAll(',', '.'));
      final resultado = exp.evaluate(
        EvaluationType.REAL,
        ContextModel(),
      );

      return resultado.toString();

    } catch (_) {
      return 'Error';
    }
  }
}