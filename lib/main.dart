// import 'package:flutter/material.dart';
// import 'package:testapp/LayoutBuilderTesting.dart';
// import 'package:testapp/homePage.dart';
// import 'package:testapp/mediaQueryTesting.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: Homepage(),
//     );
//   }
// }



//  ----------- CODE FOR DEPENDENCY INJECTION -----------  //////////

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:testapp/dependency_injection/app_info.dart';
// import 'package:testapp/dependency_injection/locator.dart';

// import 'dependency_injection/home_view.dart';


// void main() {
//   setupLocator();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Provider(
//       create: (context) => AppInfo(),
//       child: MaterialApp(
//         title: 'Dependency Injection',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           body: HomeView(
//             appInfo: Provider.of<AppInfo>(context)
//           ),
//         ),
//       ),
//     );
//   }
// }


//  ----------- CODE FOR DEPENDENCY INJECTION -----------  //


// ----------- CODE FOR STATEFUL AND STATELESS WIDGETS -----------  //////////
import 'package:flutter/material.dart';
import 'package:testapp/stateless_and_stateful/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}