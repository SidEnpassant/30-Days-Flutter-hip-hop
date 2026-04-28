import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/person_model.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<PersonModel> personList = [
    PersonModel(name: null),
    PersonModel(name: 'Sid'),
    PersonModel(name: 'Sid')
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var data = [
      {
        'name' : 'SIddhes'
      },
      {
        'name' : 'Sidd'
      },
      {
        'name' : null
      },
    ];


    for(int i = 0 ; i < data.length ; i++){
      personList.add(PersonModel.fromJson(data[i]));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: personList.length,
          itemBuilder: (context , index){
            return ListTile(
              title: Text(personList[index].name ?? ''),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            // PersonModel personModel = PersonModel(name: 'Siddhes Das');
            // PersonModel personModel1 = PersonModel(name: 'Siddhes Das');

            Map<String , dynamic> data = {
              'name': null
            };

            PersonModel model = PersonModel.fromJson(data);
            print(model.name);

            model = model.copyWith(name: 'NEW SAKA');
            print(model.name.toString());
            
            // print(personModel1 == personModel);
            // print(personModel.hashCode.toString());
            // print(personModel1.hashCode.toString());

          }
      ),
    );
  }
}

//
// class PersonModel {
//   String? name;
//   PersonModel({this.name});
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//           other is PersonModel &&
//               runtimeType == other.runtimeType &&
//               name == other.name;
//
//
//   @override
//   // TODO: implement hashCode
//   int get hashCode => name.hashCode;
//
//
//   PersonModel.fromJson(Map<String , dynamic> json){
//     name = json['name'];
//   }
//
//   Map<String , dynamic> toJson(){
//     final Map<String , dynamic> data = new Map<String , dynamic>();
//     data['name'] = this.name;
//     return data;
//   }
//
//   PersonModel copyWith({
//     String? name,
//   }){
//   return PersonModel(
//        name: name ?? name
//    );
//   }
//
//   @override
//   String toString(){
//     return 'Person(firstName: $name)';
//   }
// }