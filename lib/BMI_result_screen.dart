import 'package:flutter/material.dart';

class BMIResult extends StatelessWidget {
  final bool isMale;
  final int age;
  final int height;
  final double result;
  final int weight;
  final String status;
  final Color statusColor;

  BMIResult({
    required this.isMale,
    required this.age,
    required this.height,
    required this.result,
    required this.weight,
    required this.status,
    required this.statusColor,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale? 'Male' : 'Female'}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Height : $height',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Weight : $weight',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : ${result.toStringAsFixed(1)}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Status : $status',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: statusColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
