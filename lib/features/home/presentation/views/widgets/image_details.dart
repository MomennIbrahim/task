import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Card(
            elevation: .8,
            child: Container(
              height: 220,
              width: 277,
              margin: const EdgeInsets.symmetric(
                  horizontal: 44.0, vertical: 40.0),
              child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/images/71nz3cIcFOL 3.png')),
            ),
          ),
        ),
      ),
    );
  }
}
