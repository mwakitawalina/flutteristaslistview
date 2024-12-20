import 'package:flutter/material.dart';
import 'package:smple_list_view/button_page.dart';
import 'package:smple_list_view/custom_list_tile.dart';

class SimpleListViewPage extends StatelessWidget {
  const SimpleListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        title:const Text("My List View"),
        actions:[

          Icon(Icons.list),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ButtonsPage()));
            
          }, icon: Icon(Icons.more))
        ],
      ),
      body:ListView(
        children:  [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Aggy Lina"),
            subtitle: Text("Hello There"),
            
          ),
           ListTile(
            leading: Icon(Icons.person,color:Colors.red),
            title: Text("Aggy Lina",
            style: TextStyle(
              fontWeight: FontWeight.bold
            )),
            subtitle: Text("Hello There"),
            
          ),
           ListTile(
            leading: Icon(Icons.person),
            title: Text("Aggy Lina"),
            subtitle: Text("Hello There"),
            trailing: Badge(child: Text('2'),),
            
          ),
          CustomListTile(
            leading: Icons.flaky,
            title:'Lina Aggy custom tle',
            subtitle: 'Hello here custom tile Lina',
            badgeLabel: FlutterLogo(),
            badgeChild: Text('9'),
            onTap: () {
              print("Tapped");
            },
          ),
 CustomListTile(
            leading: Icons.flaky,
            title:'Lina Aggy custom tle',
            subtitle: 'Hello here custom tile Lina',
            badgeLabel: FlutterLogo(),
            badgeChild: Text('9'),
            onTap: () {
              print("Tapped");
            },
            
          ),
           CustomListTile(
            leading: Icons.flaky,
            title:'Lina Aggy custom tle',
            subtitle: 'Hello here custom tile Lina',
            badgeLabel: FlutterLogo(),
            badgeChild: Text('9'),
            onTap: () {
              print("Tapped");
            },
          ),
           CustomListTile(
            leading: Icons.flaky,
            title:'Lina Aggy custom tle',
            subtitle: 'Hello here custom tile Lina',
            badgeLabel: FlutterLogo(),
            badgeChild: Text('9'),
            onTap: () {
              print("Tapped");
            },
          ),

        ],
      ) ,
    );
  }
}