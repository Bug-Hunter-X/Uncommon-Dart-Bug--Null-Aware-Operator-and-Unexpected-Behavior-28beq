```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0; //Using the null-aware operator

  void setValue(int? newValue) {
    _value = newValue;
  }
}

void main() {
  final myObject = MyClass(null);
  print('Initial value: ${myObject.value}'); //Prints 0

  myObject.setValue(10);
  print('Value after setting: ${myObject.value}'); //Prints 10

  myObject.setValue(null);
  print('Value after setting to null: ${myObject.value}'); //Prints 0
}
```