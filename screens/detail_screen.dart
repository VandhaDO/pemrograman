import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('assets/images/kya1.jpg'),
              Container(),
              Container(),
              Container(),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      'https://drive.google.com/drive/u/0/folders/1pFIxY3qCE9DIIP-q166DpUsXyVEzEVnL'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                          'assets/images/kya2.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                          'assets/images/kya3.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                          'assets/images/kya4.jpg'),
                    ),
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}