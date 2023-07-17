import 'package:flutter/material.dart';

class ImageListViewDetails extends StatelessWidget {
  const ImageListViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SizedBox(
        height: 170,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 3.0, vertical: 29.0),
              child: SizedBox(
                height: 100.0,
                width: 100.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Card(
                    elevation: .8,
                    child: Container(
                      width: 71.0,
                      height: 54.0,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 23.0),
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/images/71nz3cIcFOL 3.png')),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
