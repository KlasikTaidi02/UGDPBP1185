import 'package:flutter/material.dart';

class CustomGrid extends StatefulWidget {
  const CustomGrid({super.key});

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  static const itemCount = 12;

  List<bool> expandableState = List.generate(itemCount, (index) => false);

  Widget bloc(double width, int index) {
    bool isExpanded = expandableState[index];

    return GestureDetector(
      onTap: () {
        setState(() {
          expandableState[index] = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: const EdgeInsets.all(5.0),
        width: !isExpanded ? width * 0.45 : width * 0.92,
        height: !isExpanded ? width * 0.45 : width * 0.92,
        decoration: BoxDecoration(
          color: Colors.white, // Set latar belakang menjadi putih
          boxShadow: [
            BoxShadow(
              color:
                  Colors.grey.withOpacity(0.5), // Warna bayangan dan kejelasan
              spreadRadius: 3, // Jarak sebar bayangan
              blurRadius: 5, // Jumlah blur bayangan
              offset: Offset(0, 3), // Geser bayangan pada sumbu X dan Y
            ),
          ],
          borderRadius: BorderRadius.circular(10), // Bentuk sudut kotak
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Align(
        child: SingleChildScrollView(
          child: Wrap(
            children: List.generate(itemCount, (index) {
              return bloc(width, index);
            }),
          ),
        ),
      ),
    );
  }
}
