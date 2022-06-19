import 'package:contact_list/model.dart';
import 'package:contact_list/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contact"),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
            itemCount: myList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Page2(
                            model: myList[index],
                          )));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("${myList[index].img}"),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${myList[index].name}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "${myList[index].email}",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "${myList[index].age}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            myList[index].gender == true ? 'Male' : 'Female',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
