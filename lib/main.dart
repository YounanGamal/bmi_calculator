import 'package:bmi_calculator/core/route/generate_routes.dart';
import 'package:bmi_calculator/core/route/page_route_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: GenerateRoutes.onGenerate,
      initialRoute: PageRouteName.home,
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(title: Text('BMI Calculator')),
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               showBMIDialog(context, 22.5, 65, 170, "Normal");
//             },
//             child: Text('Show BMI'),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void showBMIDialog(
//     BuildContext context,
//     double bmi,
//     int weight,
//     int height,
//     String status,
//   ) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//           contentPadding: EdgeInsets.all(20),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 'Your BMI:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 bmi.toString(),
//                 style: TextStyle(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                 decoration: BoxDecoration(
//                   color: Colors.green,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Text(
//                   status,
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Column(
//                     children: [
//                       Text(
//                         'Weight',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       Text('$weight kg'),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Text(
//                         'Height',
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       Text('$height cm'),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: Text('Close'),
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
