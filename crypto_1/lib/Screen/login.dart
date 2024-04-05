import 'package:crypto_1/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Traveler"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/kashmir (4).jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                   decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SliderButton(
                  action: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                    return false;
                  },
                  label:const  Center(
                    child:  Text(
                      "Slide to login",
                      style: TextStyle(
                        color: Color(0xff4a4a4a),
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  icon: const Text(
                    "x",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 44,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
