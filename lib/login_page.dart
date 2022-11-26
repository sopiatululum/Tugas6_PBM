import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugasenam/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Future<SharedPreferences> _preference = SharedPreferences.getInstance();
  bool _isBool = false;

  void _Boolean() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = !_isBool;
      if (_isBool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        print("Asikk berhasil masuk");
        print(_isBool);
      } else {
        print("Ayoo masuk dulu ya");
        print(_isBool);
      }
    });
    prefs.setBool('isbool', _isBool);
  }

  _getBool() async {
    final SharedPreferences prefs = await _preference;
    setState(() {
      _isBool = prefs.getBool('isbool') ?? _isBool;
      if (_isBool == true) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
        print(_isBool);
        print("Yeyy bisa masuk><");
      } else {
        print(_isBool);
        print("yahh belum bisa masuk:(");
      }
    });
  }

  void initState() {
    super.initState();
    _getBool();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 31, 134, 231),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hallo, Selemat datang",
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(251, 253, 252, 252),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(onPressed: _Boolean, child: const Text('Start')),
            ],
          ),
        ),
      ),
    );
  }
}
