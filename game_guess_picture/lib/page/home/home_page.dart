import 'package:flutter/material.dart';
import 'package:game_guess_picture/data/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => Dialog(
                    child: SizedBox(
                      height: 100,
                      child: Center(child: Text(data[index]['name'])),
                    ),
                  ),
                );
              },
              icon: Icon(Icons.child_care),
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(data[index]['image']),
              SizedBox(height: 20),
              TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Nhập tên bộ phim",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (index == 0) {
                          index = data.length - 1;
                        } else {
                          index--;
                        }
                      });
                    },
                    child: Text("Back"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.text == data[index]['name']) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Chính xác"),
                            backgroundColor: Colors.green,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Sai rồi"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                      controller.clear();
                    },
                    child: Text("Check"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (index == data.length - 1) {
                          index = 0;
                        } else {
                          index++;
                        }
                      });
                    },
                    child: Text("Next"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
