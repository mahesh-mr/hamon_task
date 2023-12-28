import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hamon_task/precentation/core/colors.dart';
import 'package:hamon_task/precentation/screens/each_student_screen/each_student_screen.dart';
import 'package:hamon_task/precentation/screens/studens_screen/students_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: appBlack),
          backgroundColor: appBackground,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: GoogleFonts.roboto(
              color: appBlack, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        // primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
   
      home: EachStudentScreen(
        
      ),
    );
  }
}
