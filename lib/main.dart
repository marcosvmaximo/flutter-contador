import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberPeople = 0;

  void incrementNumberPeople() {
    setState(() {
      numberPeople++;
    });
  }

  void decrementNumberPeople() {
    setState(() {
      numberPeople--;
    });
  }

  bool get isNegative => numberPeople < 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.deepPurple[400],
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/lofi_wallpaper.jpeg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Contador',
              style: TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 226, 218, 240),
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 100),
              child: Text(
                numberPeople.toString(),
                style: TextStyle(
                  fontSize: 80,
                  color: isNegative
                      ? const Color.fromARGB(255, 235, 53, 53)
                      : const Color.fromARGB(255, 51, 215, 70),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 226, 218, 240),
                    fixedSize: const Size(100, 50),
                    primary: Colors.deepPurple[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: incrementNumberPeople,
                  child: const Text(
                    'Adicionar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 226, 218, 240),
                    fixedSize: const Size(100, 50),
                    primary: Colors.deepPurple[400],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: decrementNumberPeople,
                  child: const Text(
                    'Remover',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
