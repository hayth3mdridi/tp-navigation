import 'package:flutter/material.dart';
import 'package:fluttertpnavigation/models/dog.dart';
import 'package:fluttertpnavigation/ui/widgets/dog_quick_info.dart';

class DetailsScreen extends StatelessWidget {
  final Dog dog;
  const DetailsScreen(this.dog, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              dog.assetPath,
              width: double.infinity,
              height: 400,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          dog.name,
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: dog.gender == 'Male'
                              ? const Color(0xFFD8E5FA)
                              : const Color.fromARGB(83, 240, 9, 9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          dog.gender,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        dog.distance,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '12 min ago',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[700],
                        ),
                      ),
                      Text(
                        '${dog.age} yrs | ${dog.color}',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'About me',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    dog.description,
                    style: const TextStyle(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Quick info',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DogQuickInfo('${dog.age} yrs', 'Age'),
                      DogQuickInfo(dog.color, 'Color'),
                      DogQuickInfo('${dog.weight} kg', 'Weigth'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
