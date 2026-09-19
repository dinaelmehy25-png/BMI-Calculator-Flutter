import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultPage extends StatefulWidget {
  final int weight;
  final int height;


  const ResultPage({
    super.key,
    required this.weight,
    required this.height,});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
double get bmiResult {
    if (widget.height == 0) return 0.0;
    double heightInMeters = widget.height / 100.0;
    return widget.weight / (heightInMeters * heightInMeters);
  }
    
  @override
  void initState() {
    super.initState();
  }


  String get bmiClass {
    if (bmiResult < 18.5) return "UNDERWEIGHT";
    if (bmiResult <= 24.9) return "STANDARD";
    if (bmiResult <= 29.9) return "OVERWEIGHT";
    return "OBESE";
  }

  String get bmiAdvice {
    if (bmiResult < 18.5) {
      return "Underweight range is below 18.5 Kg/m2, in order to gain weight, focus on nutrient-dense foods.";
    } else if (bmiResult <= 24.9) {
      return "Standard range is 18.5-24.0 Kg/m2, in order to stay in the Standard range, reduce daily calories and increase exercise";
    } else {
      return "Overweight range starts at 25.0 Kg/m2, try reducing calories and exercising daily.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
     backgroundColor: Color.fromARGB(255, 250, 198, 216),
     appBar:AppBar(
           backgroundColor:Color.fromARGB(255, 250, 198, 216),
           elevation: 0,
           leading: Padding(
             padding: const EdgeInsets.all(12.0),
             child:IconButton(
                 onPressed: () {
                   Get.back();
                       },
                 icon: const Icon(Icons.arrow_back_ios),
                     ),
                  ),
             actions: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(Icons.account_circle_outlined,color: Colors.black,size: 25,),
                  ),
                       ],
                   ),
    body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,   
          children: [
            const Text(
              "Your BMI",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 200,
              width: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 180,
                    width: 180,
                    child: CircularProgressIndicator(
                      value: (bmiResult / 40).clamp(0.0, 1.0),
                      strokeWidth: 10,
                      backgroundColor: Colors.black12,
                      color: const Color.fromARGB(255, 140, 30, 45),
                    ),
                  ),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Positioned(
                    bottom: 20,
                    left: 10,
                    child: Text("LEAN", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                  const Positioned(
                    bottom: 20,
                    right: 10,
                    child: Text("OVERWEIGHT", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "CLASS",
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              bmiClass,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "BMI=${bmiResult.toStringAsFixed(1)} Kg/m2",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),

            Text(
              bmiAdvice,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 140, 30, 45),
                height: 1.4,
              ),
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.refresh, size: 28),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share, size: 26),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
    
    










































    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    