import 'package:flutter/material.dart';
import 'package:smart_soft/blogdelete.dart';
import 'package:smart_soft/blogstore.dart';
import 'package:smart_soft/blogupdate.dart';
import 'package:smart_soft/showallblog.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text('Blog'),
     ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton.icon(
                icon: Icon(Icons.list),
                label: Text("Show All Blog"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300,80),
                  textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  onPrimary: Colors.black87,
                  elevation: 15,
                  shadowColor: Colors.amber,
                    side: BorderSide(color: Colors.black87, width: 2),
                  shape: StadiumBorder()
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>ShowAllBlog()));
              },
              ),
            ),
            Center(
            child: ElevatedButton.icon(
            icon: Icon(Icons.save),
            label: Text("BlogStore"),
            style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            fixedSize: Size(300,80),
            textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            onPrimary: Colors.black87,
            elevation: 15,
            shadowColor: Colors.amber,
            side: BorderSide(color: Colors.black87, width: 2),
            shape: StadiumBorder()
            ),
            onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>BlogStore()));
              },
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                icon: Icon(Icons.update),
                label: Text("Blog Update"),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20.0),
                    fixedSize: Size(300,80),
                    textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    onPrimary: Colors.black87,
                    elevation: 15,
                    shadowColor: Colors.amber,
                    side: BorderSide(color: Colors.black87, width: 2),
                    shape: StadiumBorder()
                ),
                onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>BlogUpdate()));
              },
              ),
            ),
            Center(
               child: ElevatedButton.icon(
                icon: Icon(Icons.delete_forever),
                label: Text("Blog Delete"),
                style: ElevatedButton.styleFrom(
                 padding: EdgeInsets.all(20.0),
                  fixedSize: Size(300,80),
                  textStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  onPrimary: Colors.black87,
                  elevation: 15,
                  shadowColor: Colors.amber,
                  side: BorderSide(color: Colors.black87, width: 2),
                  shape: StadiumBorder()
                ),
                onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>BlogDelete()));
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
