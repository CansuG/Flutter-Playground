main() {
  variablePlayground();
  stringPlayground();
  functionPlayground();
  consumeClosure();
}

void variablePlayground() {
  basicTypes();
  untypedVariables();
  typeInterpolation();
  immutableVariables();
}

void basicTypes() {
  int four = 4;
  double pi = 3.14;
  num someNumber = 24601;
  bool yes = true;
  bool no = false;
  int? nothing;
  print(four);
  print(pi);
  print(someNumber);
  print(yes);
  print(no);
  print(nothing == null);
}

void untypedVariables() {
  dynamic something = 14.2;
  print(something.runtimeType);
}

void typeInterpolation() {
  var anInteger = 15;
  var aDouble = 27.6;
  var aBoolean = false;

  print(anInteger.runtimeType);
  print(anInteger);

  print(aDouble.runtimeType);
  print(aDouble);

  print(aBoolean.runtimeType);
  print(aBoolean);
}

void immutableVariables() {
  final int immutableInteger = 5;
  final double immutableDouble = 0.015;

  final interpolatedInteger = 10;
  final interpolatedDouble = 72.8;

  print(interpolatedInteger);
  print(interpolatedDouble);

  const aFullySealedVariable = true;
  print(aFullySealedVariable);
}

void stringPlayground() {
  basicStringDeclaration();
  multiLineStrings();
  combiningStrings();
}

void basicStringDeclaration() {
  print('Single quotes');
  final aBoldStatement = 'Dart isn\'t loosely typed.';
  print(aBoldStatement);

  print("Hello, World");
  final aMoreMildOpinion = "Dart's popularity has skyrocketed with Flutter!";
  print(aMoreMildOpinion);

  final mixAndMatch =
      'Every programmer should write "Hello, World" when learning a new language.';
  print(mixAndMatch);
}

void multiLineStrings() {
  final withEscaping = 'One Fish\nTwo Fish\nRed Fish\nBlue Fish';
  print(withEscaping);

  final hamlet = '''
  To be, or not to be, that is the question :
  Whether 'tis nobler in the mind to suffer
  The slings and arrws of outrageous fortune,
  Or to take arms against a sea of troubles 
  And by opposing end them
   ''';

  print(hamlet);
}

void combiningStrings() {
  traditionalConcatenation();
  modernInterpolation();
}

void traditionalConcatenation() {
  final hello = 'Hello';
  final world = "world";

  final combined = hello + ' ' + world;
  print(combined);
}

void modernInterpolation() {
  final year = 2011;
  final interpolated = 'Dart was announced in $year.';
  print(interpolated);

  final age = 35;
  final howOld = 'I am $age ${age == 1 ? 'year' : 'years'} old.';
  print(howOld);
}

void functionPlayground() {
  classicalFunctions();
  optionalParameters();
}

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a+b;
}

int factorial(int number) {
  if(number <= 0) {
    return 1;
  }
  return number * factorial(number - 1);
}

void classicalFunctions() {
  printMyName('Anna');
  printMyName('Micheal');

  final sum = add(5, 3);
  print(sum);

  print('10 Factorial is ${factorial(10)}');
}

void unnamed([String? name, int? age]) {
  final actualName = name ?? 'Unknown';
  final actualAge = age ?? 0;
  print('$actualName is $actualAge years old.');
}

void named({String? greeting, String? name}) {
  final actualGreeting = greeting ?? 'Hello';
  final actualName= name ?? 'Mystery Person';
  print('$actualGreeting, $actualName!');
}

String duplicate(String name, {int times = 1}) {
  String merged= '';
  for(int i = 0; i < times; i++) {
    merged += name;
    if(i != times -1 ){
      merged += ' ';
    }
  }
  return merged;
}

void optionalParameters() {
  unnamed('Huxley', 3);
  unnamed();

  named(greeting: 'Greetings and Salutations');
  named(name: 'Sonia');
  named(name: 'Alex', greeting: 'Bonjour');

  final multiply = duplicate('Mikey', times:3);
  print(multiply);
}

void callbackExample(void callback(String value)) {
  callback('Hello Callback');
}

typedef NumberGetter = int Function();

int powerOfTwo(NumberGetter getter) {
  return getter() * getter();
}

void consumeClosure() {
  final getFour = () => 4;
  final squared = powerOfTwo(getFour);
  print(squared);

  callbackExample((result) {
    print(result);
  });
}