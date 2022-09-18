import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:smart_soft/config.dart';
import 'package:smart_soft/model/bloglist.dart';

class ShowAllBlog extends StatefulWidget {
  const ShowAllBlog({Key? key}) : super(key: key);

  @override
  State<ShowAllBlog> createState() => _ShowAllBlogState();
}

class _ShowAllBlogState extends State<ShowAllBlog> {
List blogs =[];
bool isLoading = false;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchBlog();
  }
  fetchBlog() async{
    var url ="$baseUrl/admin/blog-news";
    var response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      var items = json.decode(response.body)['JSON']['data']['blogs']['data'];
      setState(() {
        blogs = items;
      });
    }else{
      setState(() {
        blogs =[];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Blog List"),
      ),
      body: getBody(blogs),
    );
  }
  Widget getBody(index){
    List items =[
      "1",
      "2"
    ];
    return ListView.builder(
      itemCount: blogs.length,
      itemBuilder: (context, index) {
      return Text("indext $index");
    } );
    
  }
}

Widget getCard(index){
  var data = index['JSON']['data']['blogs']['data']['title']['title'];
 return Card(
  child: Row(children:<Widget> [
    Container(

    )
  ]),
 );
}