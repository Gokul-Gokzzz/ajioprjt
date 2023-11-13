import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 30, right: 30),
                    child: Text("All"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 20, right: 20),
                    child: Text("Order Upates"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 20, right: 20),
                    child: Text("Promotions"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Card(
            child: Row(
              children: [
                Container(
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Upto 70% off on Soch 😍",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text("premium Ethnics on discount ✨"),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 197, 195, 195)),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                // left: 110,
                                // right: 110
                                ),
                            child: Text(
                              'SHOP NOW',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
