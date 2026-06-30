import 'package:flutter/material.dart';
import 'package:game_guess_picture/data/game.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.child_care)),
            SizedBox(width: 20),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(data[0]['image']),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nhập tên bộ phim",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Back")),
                  ElevatedButton(onPressed: () {}, child: Text("Check")),
                  ElevatedButton(onPressed: () {}, child: Text("Next")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
