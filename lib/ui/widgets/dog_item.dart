import 'package:flutter/material.dart';
import 'package:fluttertpnavigation/models/dog.dart';

class DogItem extends StatelessWidget {
  final Dog dog;
  const DogItem(this.dog, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              dog.assetPath,
              width: 130,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        dog.name,
                        style: const TextStyle(
                          fontSize: 23,
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
                  height: 16,
                ),
                Text(
                  '${dog.age} yrs | ${dog.color}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                    Expanded(
                      child: Text(
                        dog.distance,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Text(
                      '12 min ago',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
