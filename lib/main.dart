import 'package:flutter/material.dart';
import 'package:v182/detay.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Mode Uygulaması",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            color: Colors.grey,
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 20)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 20)),
            Tab(icon: Icon(Icons.navigation, color: Colors.grey, size: 20)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 20)),
          ],
        ),
      ),
      body: ListView(
        children: [
          // left scrool listview (model foto icon foto follow button)
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              // color: Colors.blue.shade100,
              height: 140,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  SizedBox(width: 30),
                  listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                  SizedBox(width: 30),
                  listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                  SizedBox(width: 30),
                  listeElemani("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  SizedBox(width: 30),
                  listeElemani("assets/model2.jpeg", "assets/louisvuitton.jpg"),
                  SizedBox(width: 30),
                  listeElemani("assets/model3.jpeg", "assets/chloelogo.png"),
                  SizedBox(width: 30),
                ],
              ),
            ),
          ),
          // Card
          Padding(
            padding: const EdgeInsets.all(16),
            child: Material(
              elevation: 4,
              child: Container(
                padding: EdgeInsets.all(16),
                height: 540,
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // model 1 jpeg
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.yellow.shade100,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/model1.jpeg",
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10),
                        // Daisy since 1996
                        Container(
                          decoration: BoxDecoration(
                              // color: Colors.yellow.shade100,
                              ),
                          width: MediaQuery.of(context).size.width / 1.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "since 1955",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 10,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.more_vert)
                      ],
                    ),
                    SizedBox(height: 15),
                    // paragraph
                    Text(
                      "This official websites features a ribbed knit zipper jacket that is "
                      "modern and stylish. It looks very temparament and is recomended to friends",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          color: Colors.grey,
                          fontSize: 13),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // modelgrid1 jpeg
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(img: "assets/modelgrid1.jpeg"),
                            ));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width / 2.5,
                              decoration: BoxDecoration(
                                color: Colors.yellow.shade100,
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage("assets/modelgrid1.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),

                        Column(
                          children: [
                            //modelgrid2 jpeg
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(img: "assets/modelgrid2.jpeg"),
                                ));
                              },
                              child: Hero(
                                tag: "assets/modelgrid2.jpeg",
                                child: Container(
                                  height: 95,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid2.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            // modelgrid3 jpeg
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(img: "assets/modelgrid3.jpeg"),
                                ));
                              },
                              child: Hero(
                                tag: "assets/modelgrid3.jpeg",
                                child: Container(
                                  height: 95,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        // # louis vuitton button
                        Container(
                          height: 25,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "# louis vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat", fontSize: 10),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        // chloe button
                        Container(
                          height: 25,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              "chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat", fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        // reply icon
                        Icon(
                          Icons.reply,
                          size: 30,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(width: 10),
                        // 1.3k text
                        Text(
                          "1.3k",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.comment,
                          size: 30,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        SizedBox(width: 10),
                        //325 text
                        Text(
                          "325",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2.4,
                          // color: Colors.yellow.shade100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              ),
                              SizedBox(width: 10),
                              // 2.3k
                              Text(
                                "2.3k",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Colors.yellow.shade100,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade100,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(
                        logoPath,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
