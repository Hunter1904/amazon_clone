import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const List<String>carouselImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8MVWVKYFxhsE_P9ukktqoPSCgt7qZ4fYrcg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"
  ];

  var searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
             flexibleSpace: Container(
               decoration: const BoxDecoration(color: Colors.lightBlueAccent
               )),

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 15),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TextFormField(
                      onFieldSubmitted: (value)
                      {
                        ("SEARCH QUERY - $value");
                      },
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                          onTap: (){},
                          child: const Padding(padding: EdgeInsets.only(left: 6),
                          child: Icon(Icons.search , color: Colors.black, size:23)),
                        ),
                          suffixIcon: InkWell(
                            onTap: () {
                              searchText.clear(); // Clear the text field when tapped
                            },
                            child: const Icon(Icons.mic, color: Colors.black , size: 23,),
                          ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7),),
                          borderSide: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          )
                        ),
                        hintText: 'Search Amazon.in',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        )
                      ),
                        controller: searchText
                    ),
                  ),
                )),
                Container(
                  color: Colors.transparent,
                  height: 42,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(Icons.qr_code,color: Colors.black, size: 25,),
                )
              ],
            ),

             ),
          ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                decoration:const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 144, 226 , 221),
                    Color.fromARGB(255, 162, 236 , 233),
                  ],
                  stops: [0.5,1],
                  ),
                ),
                padding: const EdgeInsets.only(left: 10),
                child: const Row(
                  children: [
                     Icon(
                      Icons.location_on_outlined,
                      size: 20,
                    ),
                    Expanded(child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        'Delivery to Location ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )),
                    Padding(padding: EdgeInsets.only(left: 5,top: 2),
                    child: Icon(Icons.arrow_drop_down_outlined ,
                    size: 18,),)
                  ],
                ),
              ),

              Container(
                height: 100,
                color: Colors.grey,
              ),

              CarouselSlider(

                items: carouselImages.map ((i) {

                return Builder(
                builder: (BuildContext context) => Image.network(
              i,
              fit: BoxFit.cover,
              height:250,
              ),
                );
              },
              ).toList(),
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: 250,
                ),
              ),
              
            ],
          ),
        ),
        );
  }
}
