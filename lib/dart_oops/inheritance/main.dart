// void main(){
//   Student student = Student();
//
//   student.name = 'Siddhes';
//   student.age = 22;
//   student.sem = '7th';
//   student.regNumber = '232321312313134325';
//
//   student.displayInfo();
//   student.displaySchoolInfo();
// }
//
//
//
// // parent class
// class Person {
//   String? name;
//   int? age;
//
//   void displayInfo(){
//     print('Name: $name , Age: $age');
//   }
// }
//
//
//
// // child class or derived class
// class Student extends Person{
//   String? regNumber;
//   String? sem;
//
//   void displaySchoolInfo(){
//     print('Registration no : $regNumber');
//     print('Semester : $sem');
//   }
//
// }


void main(){
  Macbook macbook = Macbook('Macbook' , 154440 , 'Macbook Air');

  macbook.displayInfo();
}
// parent or base class
class Laptop{
  String brand;
  double price;

  // Constructor with parameters
  Laptop(this.brand , this.price){
    print('Laptop call');
  }

  void displayInfo(){
    print('Brand: $brand , Price: $price');
  }
}

class Macbook extends Laptop{
  String model;
  Macbook(String brand , double price , this.model) : super(brand , price);
  void displayInfo(){
    super.displayInfo();
    print('Model: $model');
  }
}