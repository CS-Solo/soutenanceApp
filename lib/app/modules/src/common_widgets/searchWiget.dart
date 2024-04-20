import 'package:flutter/material.dart';

final TextEditingController searchController = TextEditingController();

class searchWidget extends StatelessWidget {
  const searchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // decoration: BoxDecoration(
      //   color: Color.fromARGB(255, 231, 231, 231),
      //   borderRadius: BorderRadius.circular(20),
      // ),
      alignment: Alignment.bottomCenter,
      child: TextFormField(
        controller: searchController,
        onChanged: (context) {},
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          hintText: "Rechercher",
          fillColor: Color.fromARGB(255, 230, 223, 223),
          hintStyle: TextStyle(color: Color.fromARGB(255, 156, 156, 156)),
          prefixIcon:
              Icon(Icons.search, color: Color.fromARGB(255, 156, 156, 156)),
        ),
      ),
    );
  }
}
