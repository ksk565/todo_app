import 'package:flutter/material.dart';

import '../widgets.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 24.0,
                    bottom: 6.0,
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Image(
                            image: AssetImage(
                              "assets/images/back_arrow_icon.png"
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onSubmitted: (value){
                            print("Field Value: $value");
                          },
                          decoration: InputDecoration(
                            hintText: "Enter Task Title",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2111551),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: 12.0
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Description for the task...",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 24.0,
                      )
                    ),
                  ),
                ),
                TodoWidget(
                  text: "掃除をする。",
                  isDone: false,
                ),
                TodoWidget(
                  text: "ガソリン給油",
                  isDone: false,
                ),
                TodoWidget(
                  text: "買い物に行く",
                  isDone: true,
                ),
                TodoWidget(
                  isDone: true,
                ),
                TodoWidget(
                  isDone: true,
                ),
                TodoWidget(
                  isDone: true,
                ),
              ],
            ),
              Positioned(
                bottom: 24.0,
                right: 24.0,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => TaskPage()
                    )
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        color: Color(0xFFFE3577),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Image(
                      image: AssetImage(
                          "assets/images/delete_icon.png"
                      ),
                    ),
                  ),
                ),
              )
            ]
          )
        ),
      ),

    );
  }
}
