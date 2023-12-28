import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../../widgets/listtaile_widget.dart';

class StudentsListScreen extends StatelessWidget {
  const StudentsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Students"),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return CustomerTaileWidget(
              age: "22",
                image:  "https://i.pngimg.me/thumb/f/720/m2H7K9A0Z5m2G6b1.jpg",
                name: "customerNmae",
                emaiId: "customerPlace");
          },
          separatorBuilder: (context, index) => h20,
          itemCount: 20),
    );
  }
}
