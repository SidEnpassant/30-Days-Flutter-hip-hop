class Person {

  // Private attributes
  String _name;
  int _age;

  //constructor
  Person(this._name , this._age);

  String get name => _name;
  int get age => _age;

  set setAge(int age){
    if(age > 0){
      _age = age;
    }
  }

  set setName(String name){
      _name = name;
  }

  void displayInfo(){
    print('Name: $_name , Age: $_age');
  }
}