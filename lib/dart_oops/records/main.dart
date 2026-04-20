// records lets us group multiple objects or values into single objects

void main(){
  var person = (age: 25 , name: 'Siddhes');

  print("Age: " + person.age.toString());
  print("Name: " + person.name);
  
  DateTime now = DateTime(2024 , 08 , 08);
  print(now);
  var (day , minute) = returnDayMinute(now);

  print(day);
  print(minute);
  
  // print(sum(20 , 42));
  // print(sub(23 , 20));


  //var arthOp = arthmeticOp(10, 21);
  // print(arthOp.$1.toString());
  // var (sum , sub) = arthOp;
  // print(sum);
  // print(sub);
}

// (int , int) arthmeticOp(int x , int y){
//   return (x + y , x - y);
// }

// int sum(int x , int y){
//   return x + y;
// }
//
// int sub(int x , int y){
//   return x - y;
// }


(int , int) returnDayMinute(DateTime date){

  DateTime now = DateTime.now();

  int day = now.difference(date).inDays;
  int minute = now.difference(date).inMinutes;
  print(now);
  return (day ,minute);
}