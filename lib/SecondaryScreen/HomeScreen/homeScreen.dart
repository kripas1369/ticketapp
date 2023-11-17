import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> movies = [
    'Movie 1',
    'Movie 2',
    'Movie 3',
    'Movie 4',
    'Movie 5',
  ];
  @override
  Widget build(BuildContext context) {
    final searchController =TextEditingController();
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 50,),

            TextField(
              controller: searchController,
              // onChanged: (){},
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon:  Icon(Icons.keyboard_voice_rounded),
                labelText: 'Search Movies',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          SizedBox(height: 40,),
          Text("Now Playing",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
          Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 280.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 160.0,
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  // color: Colors.blue, // You can customize the color as per your needs
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image widget added here
                    Image.network(
                      'https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/sapta-sagaradaache-ello--side-b-et00367399-1699960148.jpg', // Replace with your image path
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      movies[index],
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              );
            },
          ),
    ),
              Text("Coming Soon",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 280.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 160.0,
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        // color: Colors.blue, // You can customize the color as per your needs
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image widget added here
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShKlMzQ2d7BZe8nES_eAVpYFeOsxqUWigWWQ&usqp=CAU', // Replace with your image path
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            movies[index],
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text("Coming Soon",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 280.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 160.0,
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        // color: Colors.blue, // You can customize the color as per your needs
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Image widget added here
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBNUOSUFmIsRxfeKlQyD8980iBLGkwPAr5dw&usqp=CAU', // Replace with your image path
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            movies[index],
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
          ],),
        ),
      )
    );
  }
}
