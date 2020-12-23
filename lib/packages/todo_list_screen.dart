import 'package:flutter/material.dart';

class ToDoListScreen extends StatefulWidget {
  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {

 Widget buildTask(int index) {
   return Padding(
     padding: EdgeInsets.symmetric(horizontal:25.0),
     child: ListTile(
          title: Text('Task Title'),
          subtitle: Text('Oct 2, 2019 * High'),
          trailing: Checkbox(
            onChanged: (value) {
            print(value);
         },
            activeColor: Theme.of(context).primaryColor,
            value: true,
          ),
     ),
   );
 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Red + button
       floatingActionButton: FloatingActionButton(
         backgroundColor: Theme.of(context).primaryColor,
         child: Icon(Icons.add),
         onPressed: () => print('Navigate to add task screen'),
       ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 80.0),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text('My Tasks',
            style: TextStyle(
            color: Colors.black,
            fontSize: 40.0,
            fontWeight: FontWeight.bold),
           ),
            SizedBox(height: 10.0,),
            Text(
                '1 of 10',
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 20.0,
                   fontWeight: FontWeight.w600
                 ),
                 ),
    ],
            ),
    );
    }
        return buildTask(index);
          },
      ),
    );
  }
}
