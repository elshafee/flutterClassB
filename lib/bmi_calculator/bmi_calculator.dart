import 'package:flutter/material.dart';
import 'package:flutter_classb/utills/drawer_util.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class BMICalculator extends StatefulWidget {
  BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  int currentindex = 0;
  double height = 0.0;
  double weight = 0.0;
  String resualt = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[100],
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      drawer: const Drawe(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  radioButton("Male", Colors.blue, 0),
                  radioButton("Male", Colors.pink, 1),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Your Height in CM: ",
                style: GoogleFonts.lobster(
                  color: Colors.deepPurple[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Your Height in CM: ",
                  hintStyle: GoogleFonts.aldrich(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  // fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                controller: heightController,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Your Weight in KG: ",
                style: GoogleFonts.lobster(
                  color: Colors.deepPurple[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Your Weight in KG: ",
                  hintStyle: GoogleFonts.aldrich(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  // fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                controller: weightController,
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 50.0,
                child: Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: TextButton(
                    onPressed: () {
                      if (heightController.value.text.isNotEmpty &&
                          weightController.value.text.isNotEmpty) {
                        setState(() {
                          height = double.parse(heightController.value.text);
                          weight = double.parse(weightController.value.text);
                        });
                      } else {
                        Fluttertoast.showToast(
                            msg:
                                'Please enter your Height and Weight Correctly',
                            toastLength: Toast.LENGTH_SHORT,
                            timeInSecForIosWeb: 2,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white);
                      }

                      calculateBMI(height, weight, currentindex);
                    },
                    child: Text(
                      "Calculate",
                      style: GoogleFonts.aldrich(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Your BMI is : ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aldrich(
                    color: Colors.deepPurple[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  " $resualt Kg/cm^2",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aldrich(
                    color: Colors.deepPurple[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget radioButton(String gender, Color color, int index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: MaterialButton(
          onPressed: () => changeIndex(index),
          color: currentindex == index ? color : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            gender,
            style: GoogleFonts.lobster(
              color: currentindex == index ? Colors.white : color,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  void calculateBMI(double height, double weight, int index) {
    double finalResult = weight / (height * height / 10000);
    String bmiResult = finalResult.toStringAsFixed(2);

    setState(() {
      resualt = bmiResult;
    });
  }
}
