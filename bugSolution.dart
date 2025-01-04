```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ?? 0;

  void setValue(int? newValue) {
    _value = newValue; 
    //Consider explicitly handling the default in the getter or throwing an error to signal a missing value
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