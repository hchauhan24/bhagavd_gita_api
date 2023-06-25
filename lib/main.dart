import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /*sl and ch are slok and chapter number.There are 2 options to get random slok and chapter
  First is to set their default values to some slok and chapter number,otherwise values will not be set in 
  api url at first and will show error.
  
  OR
  Second is to call function "getRandom" in initState so that ch and sl value get set before building widget
  and the values can be set in api url before it gets compiled.
   */
  int sl = 1;
  int ch = 1;
  @override
  void initState() {
    super.initState();
    //getRandom();//called it here so that
    fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: getRandom,
          backgroundColor: Colors.brown,
          child: const Icon(
            Icons.history_edu,
            color: Colors.white,
          )),
      body: FutureBuilder(
          future: fetchQuote(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              return Container(
                height: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        transform: GradientRotation(-80),
                        colors: [
                      Colors.orange,
                      Colors.deepOrangeAccent,
                    ])),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      "assets/Shri Krishna.png",
                      height: 200,
                      opacity: const AlwaysStoppedAnimation(0.8),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Text(
                              textAlign: TextAlign.center,
                              snapshot.data["slok"].toString(),
                              style: const TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              child: Text(
                                textAlign: TextAlign.justify,
                                snapshot.data["meaning"].toString(),
                                style: const TextStyle(
                                    color: Color(0xffFFFeFF),
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        ]),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  Future<Map<dynamic, dynamic>> fetchQuote() async {
    var url = Uri.parse('https://bhagavadgitaapi.in/slok//$ch//$sl');
    final response = await http.get(url);
    final body = response.body;
    final data = jsonDecode(body.toString());

    if (response.statusCode == 200) {
      final jdata = Post.fromJson(data);
      
      String slok = jdata.slok.toString();
      String meaning = jdata.tej.ht.toString();
      var sdata = {}; //MAP
      sdata['slok'] = slok;
      sdata['meaning'] = meaning;
     

      return sdata;
    } else {
      throw Exception('Failed to fetch quotes');
    }
  }

  void getRandom() {
    Random rn = Random();
    setState(() {
      ch = 1 + rn.nextInt(18);
      //random_number=min+rn.nextInt(max-min) ..."max is not included"
      if (ch == 1 || ch == 6) {
        sl = 1 + rn.nextInt(47);
      } else if (ch == 2) {
        sl = 1 + rn.nextInt(72);
      } else if (ch == 3) {
        sl = 1 + rn.nextInt(43);
      } else if (ch == 4 || ch == 10) {
        sl = 1 + rn.nextInt(42);
      } else if (ch == 5) {
        sl = 1 + rn.nextInt(29);

      } else if (ch == 7) {
        sl = 1 + rn.nextInt(30);
      } else if (ch == 8 || ch == 17) {
        sl = 1 + rn.nextInt(28);
      } else if (ch == 9) {
        sl = 1 + rn.nextInt(34);
      } else if (ch == 11) {
        sl = 1 + rn.nextInt(55);
      } else if (ch == 12) {
        sl = 1 + rn.nextInt(20);
      } else if (ch == 13) {
        sl = 1 + rn.nextInt(34);
      } else if (ch == 14) {
        sl = 1 + rn.nextInt(27);
      } else if (ch == 15) {
        sl = 1 + rn.nextInt(20);
      } else if (ch == 16) {
        sl = 1 + rn.nextInt(24);
      } else {
        sl = 1 + rn.nextInt(78);
      }
    });

  }
}
