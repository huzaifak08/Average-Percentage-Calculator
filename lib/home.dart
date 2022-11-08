import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final num1 = TextEditingController();
    final num2 = TextEditingController();
    final total = TextEditingController();
    int result;
    double percentage;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Task'),
      ),
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
          elevation: 10,
          child: Container(
            height: 400,
            width: 400,
            // color: Colors.pink,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Calculate Average and Percentage',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 18),
                  TextField(
                    controller: num1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        label: Text('Enter First Number:')),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: num2,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        label: Text('Enter Second Number:')),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    controller: total,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        label: Text('Total:')),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          result =
                              (int.parse(num1.text) + int.parse(num2.text)) ~/
                                  2;
                          total.text = result.toString();
                        },
                        child: Text('Average'),
                      ),
                      OutlinedButton(
                          onPressed: () {
                            percentage = (double.parse(num1.text) /
                                    double.parse(num2.text)) *
                                100;

                            total.text = percentage.toString();
                          },
                          child: Text('Percentage'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
