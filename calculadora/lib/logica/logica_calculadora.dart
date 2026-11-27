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

  String agregarNumero(String expression, String numero) {
    return expression + numero;
  }

  String agregarOperador(String expression, String operador){
    return expression + operador;
  }

  String porcentaje(String expression) {
    try {
      final numero = double.parse(expression);

      return (numero / 100).toString();
    } catch (_) {
      return 'Error';
    }
  }

  String limpiar() {
    return '';
  }

  String borrar(String expression) {
    if (expression.isNotEmpty) {
      return expression.substring(0, expression.length - 1);
    }
    return expression;
  }
}