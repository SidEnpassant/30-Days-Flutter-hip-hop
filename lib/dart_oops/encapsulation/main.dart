// encapsulation: hiding data within class within library to prevent its use from external resources


import 'person.dart';

void main(){
  Person person = Person('Siddhes', 22);

  person.displayInfo();

  person.setAge = 90;
  person.setName = 'Changed name : SOPP';

  print(person.name);
  print(person.age);
}

