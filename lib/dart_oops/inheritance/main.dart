void main(){
  Student student = Student();

  student.name = 'Siddhes';
  student.age = 22;
  student.sem = '7th';
  student.regNumber = '232321312313134325';

  student.displayInfo();
  student.displaySchoolInfo();
}



// parent class
class Person {
  String? name;
  int? age;

  void displayInfo(){
    print('Name: $name , Age: $age');
  }
}



// child class or derived class
class Student extends Person{
  String? regNumber;
  String? sem;

  void displaySchoolInfo(){
    print('Registration no : $regNumber');
    print('Semester : $sem');
  }

}