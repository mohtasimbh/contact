import 'package:contact_list/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2(
      {Key? key,
      this.gender,
      this.age,
      this.email,
      this.name,
      this.img,
      this.model})
      : super(key: key);

  String? name;
  String? email;
  int? age;
  bool? gender;
  String? img;
  Model? model;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
        title: Text("${widget.model!.name}"),
      ),
      body: ListView(
        children: [
          Image.asset("${widget.model!.img}"),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${widget.model!.name}"),
              SizedBox(height: 10),
              Text("${widget.model!.email}"),
              SizedBox(height: 10),
              Text("${widget.model!.age}"),
              SizedBox(height: 10),
              Text(widget.model!.gender == true ? "Male" : "Female"),
            ],
          )
        ],
      ),
    );
  }
}
