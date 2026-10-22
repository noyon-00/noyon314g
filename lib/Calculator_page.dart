import 'package:flutter/material.dart';
import 'widgets/inputfield.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<Calculator> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double result = 0;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: Colors.lightBlueAccent,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InputField(
                      controller: controller1,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      hintText: "Enter a No.",
                      labelText: "Number 1",
                      prefixIcon: Icon(Icons.numbers),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Field is empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    InputField(
                      controller: controller2,
                      keyboardType: TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      hintText: "Enter a No.",
                      labelText: "Number 2",
                      prefixIcon: Icon(Icons.numbers),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Field is empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          String num1 = controller1.text;
                          String num2 = controller2.text;
                          result = double.parse(num1) + double.parse(num2);
                          setState(() {});
                        }
                      },
                      child: Text("Calculate"),
                    ),
                    SizedBox(height: 10),
                    Text("Answer: $result"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
