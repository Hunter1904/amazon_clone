import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            height: 48,
            child:  TextField(
              controller: searchText,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Search Amazon.in",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                      BorderSide(color: Colors.grey, width: 2)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.black,
                      )),
                  prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                  ),
                  suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.grey
                  ),
              ),

            ),
          ),

        ),

        body:
        Column(
          children: [
            Container(
              height: 55,
              width: double.infinity,
              color: Colors.lightBlueAccent.shade100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(onTap: (){},
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 5),
                      Text("Deliver to Location" , style: TextStyle(fontSize: 20)),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_drop_down_outlined,size: 30,)
                    ],
                  ),
                ),
              ),
            ),

            Container(
              height: 100,
              color: Colors.grey,
              child: Row(
                children: [

                ],
              ),
            ),

            Container(
              height: 250,
              color: Colors.blue,
            )


          ],
        )

    );
  }
}
