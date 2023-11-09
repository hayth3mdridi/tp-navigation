import 'package:flutter/material.dart';
import 'package:fluttertpnavigation/data/FakeDogDatabase.dart';
import 'package:fluttertpnavigation/ui/screens/details_screen.dart';
import 'package:fluttertpnavigation/ui/widgets/dog_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      backgroundColor: const Color(0xFFF6F6FC),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(dogList[index]),
                ),
              );
            },
            child: DogItem(dogList[index]),
          ),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
          itemCount: dogList.length,
        ),
      ),
    );
  }
}
