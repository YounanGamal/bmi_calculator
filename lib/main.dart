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

//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: BMIScreen());
//   }
// }
//
// class BMIScreen extends StatelessWidget {
//   final double bmi = 22.5; // قيمة مؤشر كتلة الجسم (يجب حسابها ديناميكيًا)
//   final double weight = 65;
//   final double height = 170;
//   final int age = 26;
//   final String gender = "Male";
//
//   // تحديد لون الحالة بناءً على الـ BMI
//   Color getBmiColor() {
//     if (bmi < 18.5) return Colors.blue;
//     if (bmi < 25) return Colors.green;
//     if (bmi < 30) return Colors.orange;
//     return Colors.red;
//   }
//
//   // تحديد الحالة بناءً على الـ BMI
//   String getBmiStatus() {
//     if (bmi < 18.5) return "Underweight";
//     if (bmi < 25) return "Normal";
//     if (bmi < 30) return "Overweight";
//     return "Obese";
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("BMI Calculator")),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               bmi.toStringAsFixed(1),
//               style: TextStyle(
//                 fontSize: 50,
//                 fontWeight: FontWeight.bold,
//                 color: getBmiColor(),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               decoration: BoxDecoration(
//                 color: getBmiColor(),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Text(
//                 getBmiStatus(),
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             // شريط المؤشر اللوني
//             Row(
//               children: List.generate(20, (index) {
//                 Color color;
//                 if (index < 6) {
//                   color = Colors.blue;
//                 } else if (index < 12) {
//                   color = Colors.green;
//                 } else if (index < 16) {
//                   color = Colors.orange;
//                 } else {
//                   color = Colors.red;
//                 }
//                 return Expanded(child: Container(height: 10, color: color));
//               }),
//             ),
//             SizedBox(height: 30),
//             Text(
//               "Healthy weight for height: 53.5 kg - 72.3 kg",
//               style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//             ),
//             SizedBox(height: 20),
//             // عرض التفاصيل
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 buildInfoCard("Weight", "$weight kg"),
//                 buildInfoCard("Height", "$height cm"),
//                 buildInfoCard("Age", "$age"),
//                 buildInfoCard("Gender", gender),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // ودجت لعرض معلومات الوزن والطول والعمر والجنس
//   Widget buildInfoCard(String title, String value) {
//     return Column(
//       children: [
//         Text(
//           value,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         Text(title, style: TextStyle(fontSize: 14, color: Colors.grey)),
//       ],
//     );
//   }
// }
