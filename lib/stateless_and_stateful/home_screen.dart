// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget { // mutable donot change state of the widget, it will not update the UI when the value changes, it will only rebuild the widget when the value changes, so we cannot use this for stateful widgets
//   const HomeScreen({super.key});

//   //int x = 0; // cannot do this for stateless widget, because it will not update the UI when the value changes
//   final int x = 10;// this is a final variable, it cannot be changed after it is initialized, but it can be used to display the value in the UI so this will work 
//   @override
//   Widget build(BuildContext context) {
//     print('build');
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('Provider Tutorials', 
//           style: TextStyle(
//             color: Colors.white,
//           ),
//           ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             child: Center(
//               child: Text(x.toString() , style: TextStyle(
//                 fontSize: 50,
//               ),),
//             ),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           //x++; // cannot do this for stateless widget,
//         },
//         child: Icon(Icons.add),
//       )
//     );
//   }
// }


// ----------- CODE FOR STATEFUL WIDGET -----------------//
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 10;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Provider Tutorials', 
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            DateTime.now().toString(),
          ),
          Container(
            child: Center(
              child: Text(x.toString(), style: TextStyle(fontSize: 50)),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            x++;
          });
        },
        child: Icon(Icons.add),
      )
    );
  }
}
