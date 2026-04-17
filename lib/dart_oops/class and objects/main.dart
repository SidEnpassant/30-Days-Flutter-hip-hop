// void main(){
//
//   /// creating object of class , instance
//   Person person = Person();
//   Person person1 = Person(); // multiple objects
//   person.name = 'Siddhes';
//   person.father = 'ohh no';
//   person.age = 22;
//   person.isStudent = true;
//
//   person1.name = 'chupam';
//   person1.father = 'faaah';
//   person1.age = 22;
//   person1.isStudent = false;
//
//   person.displayInfo();
//   person1.displayInfo();
//
// }
//
// class Person {
//   String? name ;
//   String? father;
//   int? age;
//   bool? isStudent;
//
//   // String name = 'Siddhes';
//   // String father = 'Saaaaaa';
//   // int age = 25;
//
//
//   void displayInfo(){
//     print('My name is ${name} and my father name is ${father} and i am ${age} years old');
//     print('is ${isStudent}');
//
//   }
//
// }

void main() {
  Student student1 = Student();
  Student student2 = Student();

  student1.name = 'Siddhes';
  student1.age = 22;
  student1.grade = 'A';
  student1.studentId = 2132351526356513;

  student1.displayInfo();
  
  student1.updateGrade('A+');

  student2.name = 'Suooooo';
  student2.age = 22;
  student2.grade = 'B';
  student2.studentId = 232342434234234;

  student2.displayInfo();


}


class Student {
  String? name;
  int? age;
  String? grade;
  int? studentId;

  void displayInfo(){
    print('Student name: $name');
    print('Age: $age');
    print('Grade: $grade');
    print('Student ID: $studentId');
    print('---------------------------------');
  }

  // FOR UPDATE
  void updateGrade(String newGrade){
    grade = newGrade;
    print('Grade updated: $newGrade for $name');
  }
}