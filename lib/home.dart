import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Home(),));
}

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contacts"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(title: Text('Adhil'),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
              trailing: Icon(Icons.phone),
              ),
          ),

          Card(
            child: ListTile(title: Text('Basith'),
              subtitle: Text("4545554758"),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),

          Card(
            child: ListTile(title: Text('Chandran'),
              subtitle: Text("755622555"),
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),

          Card(
            child: ListTile(title: Text('David'),
              subtitle: Text("4458864558"),
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.phone),
            ),
          ),

          Card(
            child: ListTile(title: Text('Ebin'),
              subtitle: Row(
                children: [Icon(Icons.done_all,color: Colors.blue,),
                  Text("hi how u")
                ],
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Icon(Icons.person),
              ),
              trailing: Text("12:14 pm"),
            ),
          ),

          Card(
            child: ListTile(title: Text('Farhan'),
              subtitle: Text("8593081953"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://m.media-amazon.com/images/M/MV5BNWRkMDdjNTYtYTk5ZS00ZThlLTlhMDctZGQ1YTI1NjE0MGUwXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg"),
              ),
              trailing: Column(
                children: [
                  Text('Yesterday'),
                  CircleAvatar(
                    minRadius: 5,
                    maxRadius: 10,
                    backgroundColor: Colors.green,child: Text("25"),)
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}
