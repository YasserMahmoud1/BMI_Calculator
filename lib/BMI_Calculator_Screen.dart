import 'dart:math';

import 'package:bmi_calculator/BMI_result_screen.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  bool isMale = true;
  double height = 120.0;
  int age = 20;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isMale ? Colors.blue[300] : Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage(
                                'assets/images/male.png',
                              ),
                              height: 70,
                              width: 70,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: !isMale ? Colors.blue[300] : Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              image: AssetImage('assets/images/female.png'),
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w900),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                      max: 220,
                      min: 80,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: FloatingActionButton(
                                  heroTag: 'age-',
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FloatingActionButton(
                                  heroTag: 'age+',
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$weight',
                            style: const TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: FloatingActionButton(
                                  heroTag: 'weight-',
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: FloatingActionButton(
                                  heroTag: 'weight+',
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 50,
            width: double.infinity,
            child: MaterialButton(
              onPressed: () {
                double result = weight / pow(height/100,2);
                String status;
                Color statusColor;
                if(result < 18.5)
                  {
                    if(result < 16)
                      {
                        statusColor = Colors.red;
                      }
                    else if(result >= 16 && result < 17)
                      {
                        statusColor = Colors.orange;
                      }
                    else
                      {
                        statusColor = Colors.yellow;
                      }
                    status = 'Underweight';
                  }
                else if(result < 25 && result >= 18.5)
                  {
                    statusColor = Colors.green;
                    status = 'Normal';
                  }
                else if(result < 30 && result >= 25)
                  {
                    statusColor = Colors.yellow;
                    status = 'Overweight';
                  }
                else
                  {
                    if(result < 35)
                      {
                        statusColor = Colors.orange;
                      }
                    else
                      {
                        statusColor = Colors.red;
                      }
                    status = 'Obesity';
                  }

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BMIResult(
                          isMale: isMale,
                          age: age,
                          height: height.round(),
                          result: result,
                          weight: weight,
                          status: status,
                          statusColor: statusColor,
                        )
                    ),
                );
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
