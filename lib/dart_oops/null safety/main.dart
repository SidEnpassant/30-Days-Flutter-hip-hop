void main(){
  int? age;
  // ? is for making the age variable nullable, which means it can hold a null value.

  print(age);


  String? name;

  print(name);

  if(name == null){
    print('name is null');
  }
}