// As for the third submission requirement, this task was completed using prior knowledge.
import 'package:flutter/material.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Second Task',
      theme: myTheme,
      home: MyStaticPage(),
    );
  }
}

class MyStaticPage extends StatelessWidget {
  const MyStaticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 212, 94, 133),
                ),
                child: Center(
                  child: Text(
                    'My Portfolio',
                    style:  Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Image.asset(
                  'assets/image.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20), 
              Text(
                'Let\'s turn ideas into beautiful, functional solutions!',
                style: myTheme.textTheme.bodyMedium,
              ),
              SizedBox(height: 40), 
              Column(
                children: [
                  cardElement(Icons.person, 'About Me'),
                  cardElement(Icons.code, 'Skills and Tools'),
                  cardElement(Icons.import_contacts, 'Contact Me'),
                ],
              ),
              SizedBox(height: 28), 
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 143, 196, 146),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      'Created by [Nour El Houda Akhdari]',
                      style: myTheme.textTheme.bodySmall,
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

  SizedBox cardElement(IconData cardIcon, String cardText) {
    return SizedBox(
      width: 250,
      child: Card(
        color: Colors.grey[100],
        shadowColor: Colors.grey[400],
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(cardIcon),
              SizedBox(width: 25),
              Text(
                cardText,
                style: myTheme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
