
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0;

  var num2 = 0;

  var rslt = 0;

  TextEditingController t1 =  TextEditingController();

  TextEditingController t2 =  TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Calculator",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(40),
            margin: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.amber[800],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Text(
                  "Output is : $rslt",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
                TextField(
                  controller: t1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "0",
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
                TextField(
                  controller: t2,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "0",
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: addition,
                      child:const Text(
                        "+",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.teal,
                      textColor: Colors.white,
                    ),
                    MaterialButton(
                      onPressed: subtraction,
                      child: const Text(
                        "-",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.teal,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: multiplication,
                      child:const Text(
                        "*",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.teal,
                      textColor: Colors.white,
                      elevation: 1000,
                    ),
                    MaterialButton(
                      onPressed: division,
                      child:const Text(
   
                        "/",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.teal,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                MaterialButton(
                  onPressed: clear,
                  child:const Text(
                    "clear",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.teal,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
   void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      rslt = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      rslt = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      rslt = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      rslt = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      rslt = 0;
      t1.text = "";
      t2.text = "";
    });
  }
}
