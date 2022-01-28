import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  static const String id = "Home_Page";

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List members = [
    ["Your store", true,"assets/images/Oval.svg"],
    ["Joshua", false,"assets/images/Oval (1).png"],
    ["Martin", true,"assets/images/Oval (2).png"],
    ["Karen", false,"assets/images/Oval (3).png"],
    ["Martha", true,"assets/images/Oval (4).png"],
  ];

  List messages = [
    ["Marting Randolph", "You: What's man!", "9:40 AM", false,"assets/images/Oval (2).png"],
    ["Andrew Parker", "You: Ok, thanks!", "9:25 AM", true,"assets/images/Oval (5).png"],
    ["Karen Castillo", "You: Ok,See you in To...", "Fri", true,"assets/images/Oval (3).png"],
    ["Maisy Humphrey", "Have a good day,Maisy!", "Fri", false,"assets/images/Oval (6).png"],
    ["Joshua Lawrence", "The Business plan loo...", "Thu", true,"assets/images/Oval (1).png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.blue.shade100,
            backgroundImage: AssetImage("assets/images/Oval.png"),
          ),
        ),
        elevation: 0,
        title: Text(
          "Chat",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade50,
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.shade50,
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextField(
              showCursor: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusColor: Colors.red,
                // label: Text("label",style: TextStyle(color: Colors.grey)),
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.grey,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Container(
            height: 490,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        // shrinkWrap: false,
                        scrollDirection: Axis.horizontal,
                        itemCount: members.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              index != 0
                                  ? Container(
                                      margin: EdgeInsets.all(10),
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        // color: Colors.blue.shade50,
                                        image: DecorationImage(
                                          image: AssetImage(members[index][2]),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: members[index][1] ? Colors.greenAccent.shade700 : Colors.grey,
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 3,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      margin: EdgeInsets.all(10),
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue.shade50,
                                      ),
                                      alignment: Alignment.center,
                                      child: Icon(Icons.add,size: 40,),
                                    ),
                              Text(
                                members[index][0],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          );
                        }),
                  ),
                  Container(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: messages.length * 2,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {},
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue.shade50,
                              radius: 30,
                              backgroundImage: AssetImage(messages[index % 4][4]),
                            ),
                            title: Text(messages[index % 4][0]),
                            subtitle: Text(messages[index % 4][1] +
                                " * " +
                                messages[index % 4][2]),
                            trailing: messages[index % 4][3]
                                ? Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.green,
                                  )
                                : Icon(Icons.circle_outlined),
                          );
                        }),
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
