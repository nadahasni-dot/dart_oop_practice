//* function with no return values
void sayHello() {
  print('Hello World');
}

//* function with return values
int calculateSquareArea(int height, int length) {
  return height * length;
}

//* optional parameter (named parameter)
String sendMessage(String from, String message, {String to, String appName}) {
  return from +
      ' say ' +
      message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

//* optional parameter (positional parameter)
String sendMessagePositional(String from, String message, [String to = 'someone', String appName = 'no app']) {
  return from +
      ' say ' +
      message +
      ((to != null) ? ' to ' + to : '') +
      ((appName != null) ? ' via ' + appName : '');
}

//* lambda function
int add(int number1, int number2) => number1 + number2;

//* anonymous function
double doMathOperation(double number1, double number2, Function(double, double) operation) {
  return operation(number1, number2);
}

void main(List<String> arguments) {
  //* call a function
  sayHello();
  print('==========');

  //* save return value in to a variable
  int squareArea = calculateSquareArea(10, 3);
  print(squareArea);
  print('==========');

  //* call function with optional parameters (named parameters)
  print(sendMessage('Nada', 'Hello World'));
  print(sendMessage('Nada', 'Hello Hasni', to: 'Hasni'));
  print(sendMessage('Nada', 'Hello Hasni', to: 'Hasni', appName: 'WhatsApp'));
  print('==========');

  //* call function with optional parameters (positional parameters)
  print(sendMessagePositional('Budi', 'Good Morning'));
  print(sendMessagePositional('Budi', 'Good Morning Andi', 'Andi'));
  print(sendMessagePositional('Budi', 'Good Morning Andi', 'Andi', 'WhatsApp'));
  print('==========');

  //* call lambda function
  int result = add(10, 2);
  print(result);
  print('==========');

  //* call anonymous function
  double resultOperation = doMathOperation(10, 2, (a, b) => a / b);
  print(resultOperation);
}
