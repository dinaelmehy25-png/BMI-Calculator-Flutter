import 'package:flutter/material.dart';
import 'result_page.dart';
import 'package:get/get.dart';

enum Type { Male, Female }

class BmiCalcPage extends StatefulWidget {
  const BmiCalcPage({super.key});

  @override
  State<BmiCalcPage> createState() => _BmiCalcPageState();
}

class _BmiCalcPageState extends State<BmiCalcPage> {
  Type type = Type.Male;
  int weight = 60;
  int age = 20;
  int selectedHeight = 156;
  final int minHeight = 100;
  final int maxHeight = 220;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 198, 216),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 198, 216),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
          ),
        ),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions:[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.refresh, size: 28),
                ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0), 
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: type == Type.Female
                            ? const Color.fromARGB(255, 212, 85, 96)
                            : const Color.fromARGB(255, 202, 128, 148),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          type = Type.Female;
                        });
                      },
                      child: const Text(
                        "Female",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: type == Type.Male
                            ? const Color.fromARGB(255, 212, 85, 96)
                            : const Color.fromARGB(255, 202, 128, 148),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          type = Type.Male;
                        });
                      },
                      child: const Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 247, 170, 197),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Weight",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text("KG", style: TextStyle(fontSize: 12)),
                                    ],
                                  ),
                                  Text(
                                    weight.toString(),
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FloatingActionButton.small(
                                        heroTag: "weight_add",
                                        onPressed: () => setState(() => weight++),
                                        backgroundColor: const Color.fromARGB(255, 202, 128, 148),
                                        elevation: 0,
                                        child: const Icon(Icons.add),
                                      ),
                                      FloatingActionButton.small(
                                        heroTag: "weight_remove",
                                        onPressed: () {
                                          if (weight > 0) setState(() => weight--);
                                        },
                                        backgroundColor: const Color.fromARGB(255, 202, 128, 148),
                                        elevation: 0,
                                        child: const Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 247, 170, 197),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Age",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    age.toString(),
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      FloatingActionButton.small(
                                        heroTag: "age_add",
                                        onPressed: () => setState(() => age++),
                                        backgroundColor: const Color.fromARGB(255, 202, 128, 148),
                                        elevation: 0,
                                        child: const Icon(Icons.add),
                                      ),
                                      FloatingActionButton.small(
                                        heroTag: "age_remove",
                                        onPressed: () {
                                          if (age > 0) setState(() => age--);
                                        },
                                        backgroundColor: const Color.fromARGB(255, 202, 128, 148),
                                        elevation: 0,
                                        child: const Icon(Icons.remove),
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
                    const SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 170, 197),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Height",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text("CM", style: TextStyle(fontSize: 12)),
                              ],
                            ),
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                itemExtent: 42,
                                diameterRatio: 2.0,
                                physics: const FixedExtentScrollPhysics(),
                                controller: FixedExtentScrollController(
                                  initialItem: selectedHeight - minHeight,
                                ),
                                onSelectedItemChanged: (index) {
                                  setState(() {
                                    selectedHeight = minHeight + index;
                                  });
                                },
                                childDelegate: ListWheelChildBuilderDelegate(
                                  childCount: maxHeight - minHeight + 1,
                                  builder: (context, index) {
                                    final heightValue = minHeight + index;
                                    final isSelected = heightValue == selectedHeight;

                                    return Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        AnimatedContainer(
                                          duration: const Duration(milliseconds: 150),
                                          width: isSelected ? 35 : 20,
                                          height: isSelected ? 3 : 1.5,
                                          color: isSelected ? Colors.black : Colors.black45,
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          "$heightValue",
                                          style: TextStyle(
                                            fontSize: isSelected ? 20 : 15,
                                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                            color: isSelected ? Colors.black : Colors.black54,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 202, 128, 148),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => ResultPage(
                      weight: weight,
                      height: selectedHeight,));
                  },
                  child: const Text(
                    "Calculate my BMI",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}