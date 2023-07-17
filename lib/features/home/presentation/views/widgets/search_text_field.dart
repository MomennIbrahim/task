import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.04),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(1, 3),
                    )
                  ]),
              child: TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Search',
                  hintStyle: Styles.textStyle16,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 17.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)),
            width: 50.0,
            height: 50.0,
            child: const Icon(
              Icons.science,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}
