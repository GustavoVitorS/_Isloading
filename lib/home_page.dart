import 'package:flutter/material.dart';
import 'package:loading/default_elevated_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = false;
  void setIsLoading(bool value) {
    setState(() {
      _isLoading = value;
    });
  }

  // This function will be triggered when the button is pressed
  void _startLoading() async {
    setIsLoading(true);
    await Future.delayed(const Duration(seconds: 3));

    setIsLoading(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello strawti <3'),
      ),
      body: Center(
        child: DefaultElevatedButton(
          label: 'Clique',
          onPressed: _startLoading,
          isLoading: _isLoading,
        ),
      ),
    );
  }
}
