import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  const Profile({Key? key}) : super(key: key);

  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>with SingleTickerProviderStateMixin  {
  late TabController tabController;

  ScrollController scrollController = ScrollController();

  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.lock_outline_rounded),
                SizedBox(width: 5),
                Text(
                  "Grishma",
                ),
                Icon(
                  Icons.keyboard_arrow_down,

                ),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/images/add.png",
                    width: 20, height: 20,),
                const SizedBox(width: 15),
                const Icon(Icons.menu,)
              ],
            )
          ],
        ),
      ),
      //backgroundColor: Colors.black,
      body: SingleChildScrollView(
        controller: scrollController,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(
                              "assets/images/user.jfif",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Grishma",

                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "1600",

                              ),
                              SizedBox(height: 5),
                              Text(
                                "posts",

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "1M",

                              ),
                              SizedBox(height: 5),
                              Text(
                                "Followers",

                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "5",

                              ),
                              SizedBox(height: 5),
                              Text(
                                "Following",

                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            "Edit profile",

                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        padding:  EdgeInsets.all(8),
                        child:  Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin:  EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Story Highlights",

                            ),
                           SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Keep your favourite stories on your profile",

                            ),
                          ],
                        ),
                        flex: 9,
                      ),
                       Expanded(
                        child: Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white,
                          size: 18,
                        ),
                        flex: 1,
                      )
                    ],
                  )),
              Container(
                margin:  EdgeInsets.only(left: 10, right: 10, top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:  EdgeInsets.only(right: 10),
                          child: Column(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child:  Icon(Icons.add, size: 35),
                                  style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(
                                          side:
                                              BorderSide(color: Colors.white)),
                                      padding:  EdgeInsets.all(15),
                                      backgroundColor: Colors.transparent)),
                               SizedBox(
                                height: 10,
                              ),
                              Text(
                                "New",

                              ),
                            ],
                          )),
                      for (int i = 0; i < 10; i++) favouriteStoriesWidget(),
                    ],
                  ),
                ),
              ),
              TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 0.8,
                indicatorPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                controller: tabController,
                tabs:  [
                  Tab(icon: Icon(Icons.grid_on_rounded)),
                  Tab(icon: Icon(Icons.person_pin_outlined)),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    GridView.count(
                      controller: scrollController,
                      crossAxisCount: 3,
                      children: [
                        for (int i = 0; i < 9; i++)
                          Container(
                            margin:  EdgeInsets.only(right: 3, top: 3),
                            child: Image.asset(
                              "assets/images/post.jpeg",
                              fit: BoxFit.cover,
                            ),
                          )
                      ],
                    ),
                    GridView.count(
                      controller: scrollController,
                      crossAxisCount: 3,
                      children: [
                        for (int i = 0; i < 9; i++)
                          Container(
                            margin:  EdgeInsets.only(right: 3, top: 3),
                            child: Image.asset(
                              "assets/images/post.jpeg",
                              fit: BoxFit.cover,
                            ),
                          )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget favouriteStoriesWidget() {
  return  Padding(
    padding: EdgeInsets.only(right: 10, left: 10),
    child: CircleAvatar(
      radius: 33,
      backgroundColor: Colors.black45,
    ),
  );
}
