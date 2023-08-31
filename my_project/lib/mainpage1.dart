import 'package:flutter/material.dart';
import 'package:my_project/home.dart';
import 'package:my_project/profile.dart';

class MainPage1 extends StatefulWidget {
  @override
  State<MainPage1> createState() => _MainPage1State();
}

class _MainPage1State extends State<MainPage1> {
  List<dynamic> story = [
    {"images": "assets/images/user.jfif", "username": "Grishma"},
    {"images": "assets/images/post.jpeg", "username": "post"},
    {"images": "assets/images/user.jfif", "username": "Grishma"},
    {"images": "assets/images/post.jpeg", "username": "post"},
    {"images": "assets/images/user.jfif", "username": "Grishma"},
    {"images": "assets/images/post.jpeg", "username": "post"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          "assets/images/instgram.jpg",
          height: 90,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/heart.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/messenger.png"),
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(
                      story.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            children: [
                              Container(
                                child: Container(
                                  width: 67,
                                  height: 67,
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [Colors.blue, Colors.red],
                                    ),
                                  ),
                                  child: Container(
                                    width: 65,
                                    height: 65,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        width: 65,
                                        height: 65,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey,
                                                spreadRadius: 3),
                                          ],
                                          image: DecorationImage(
                                            image: AssetImage(
                                                '${story[index]["images"]}'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text('${story[index]["username"]}')
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/images/user.jfif"),
                          ),
                        ),
                      ),
                      title: Text("Grishma"),
                      subtitle: Text("Baribe"),
                      trailing: Icon(Icons.more_vert),
                    ),
                    Container(
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/post.jpeg"),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Wrap(
                        spacing: 10,
                        children: [
                          Icon(Icons.favorite, color: Colors.red, size: 35),
                          Image.asset(
                            "assets/images/comment.png",
                            width: 30,
                          ),
                          Image.asset(
                            "assets/images/share.webp",
                            width: 45,
                          )
                        ],
                      ),
                      trailing: Icon(
                        Icons.bookmark_border_outlined,
                        size: 35,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            "100 Likes",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            "Barbie Girl",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            "View all Comment ",
                            style: TextStyle(),
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/images/user.jfif"),
                          ),
                        ),
                      ),
                      title: Text("Add a Comment...."),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: ()
                {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ),
                  );

                },
                child: Image.asset(
                  "assets/images/add.png",

                  width: 30,
                ),
              ),
              label: 'add'),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/reel.png",
                width: 30,
              ),
              label: 'Reels'),
          BottomNavigationBarItem(
              icon: Container(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Profile();
                          },
                        ),
                      );
                    });
                  }, // Image tapped
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.jfif"),
                  ),
                ),
              ),
              label: 'user'),
        ],
      ),
    );
  }
}
