import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Material(
            elevation: 0.5,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Container(
              height: 50,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(25.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        hintText: 'Search for doctor',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'NunitoSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                        prefixIcon: Container(
                          padding: EdgeInsets.all(12),
                          child: Image.asset('assets/search1.png'),
                          width: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
