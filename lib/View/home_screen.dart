import 'package:amazon_clone/View/Top_Category/deal.dart';
import 'package:amazon_clone/utils/circle_avatar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:amazon_clone/utils/singleProduct.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const List<String> carouselImages = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8MVWVKYFxhsE_P9ukktqoPSCgt7qZ4fYrcg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSUi_vfvKJuk731himUoN-SibKHAhXe86J9A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6XF4eaZc6SbvWZwKzjeUry2yNWG2qBp82IQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC5CR31pPugvEMv1gNnmMDxKpSa5fyXIVxAg&s"
  ];

  var searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 76, 181, 197),
                  Color.fromARGB(255, 162, 255, 230),
                ],
                stops: [0.25, 1],
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 42,
                  margin: const EdgeInsets.only(left: 5),
                  child: Material(
                    borderRadius: BorderRadius.circular(7),
                    elevation: 1,
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        print("SEARCH QUERY - $value");
                      },
                      decoration: InputDecoration(
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Icon(Icons.search, color: Colors.black, size: 23),
                          ),
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            searchText.clear();
                          },
                          child: const Icon(Icons.mic, color: Colors.black, size: 23),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 10),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(
                            color: Colors.black38,
                            width: 1,
                          ),
                        ),
                        hintText: 'Search Amazon.in',
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      controller: searchText,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(Icons.qr_code, color: Colors.black, size: 25),
              ),
            ],
          ),
            automaticallyImplyLeading: false,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orangeAccent.withOpacity(0.5),
              Colors.white,
              Colors.green.withOpacity(0.5),
            ],
            stops: [0.13, 0.50, 1],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 144, 226, 221),
                      Color.fromARGB(255, 162, 236, 233),
                    ],
                    stops: [0.5, 1],
                  ),
                ),
                padding: const EdgeInsets.only(left: 10),
                child: const Row(
                  children: [
                    Icon(Icons.location_on_outlined, size: 20),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Delivery to Location ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 2),
                      child: Icon(Icons.arrow_drop_down_outlined, size: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: screenSize.height * 0.13,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [ Circle_Avatar(
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4F6f4WZJvdMQODuixwk7g643PqWUJet1WzQ&s",
                        productName: "Deals",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Deal()));
                        },
                      ),
                        Circle_Avatar(
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s",
                        productName: "Mobiles",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Deal()));
                        },
                      ),
                        Circle_Avatar(
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj_cZqXxf__rfB4QP9TTsS1e8UOEKSMDD2ag&s",
                        productName: "Electronics",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Deal()));
                        },
                      ),
                        Circle_Avatar(
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUU14ezdPLFQOjyLQiu6JBTqJrDIUlxemyLA&s",
                        productName: "Fashion",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Deal()));
                        },
                      ),
                        Circle_Avatar(
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKf30MLxNQDLbuA_7iFvskxiyB_RhVhI4S7Q&s",
                        productName: "Home",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Deal()));
                        },
                      ),
                        Circle_Avatar(
                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeEn8GOFDRqBsTDXO-v1cLaHem-j7r0OnGnw&s",
                        productName: "Beauty",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Deal()));
                        },
                      ),
                        Circle_Avatar(
                        imageUrl: "https://assets.aboutamazon.com/dims4/default/d573e3b/2147483647/strip/false/crop/1320x743+0+0/resize/1320x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F92%2F06%2Fbb204a6842a49e7bdc66523a070c%2Fblog2.jpg",
                        productName: "Grocery",
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Deal()));
                        },
                      )
                      ],
                    ),
                  ),
                ),
              ),
              CarouselSlider(
                items: carouselImages.map((i) {
                  return Builder(
                    builder: (BuildContext context) => Image.network(
                      i,
                      fit: BoxFit.cover,
                      width: screenSize.width,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  viewportFraction: 1,
                  height: screenSize.height * 0.30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: screenSize.height * 0.25,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                        SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 75,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Amazon Great Indian Sale",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                    SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
                    SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9YQ-XOZxnZ8uH0qnG9_1iYs61Yxko6AuGWg&s"),
                    SingleProduct(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWjZ-6BdTya9CXslHzasdZgcNRGX5WTQwh3A&s"),
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
