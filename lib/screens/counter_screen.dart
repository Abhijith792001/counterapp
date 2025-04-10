import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter App',style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Color.fromRGBO(42, 20, 38, 1),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 200),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Text('Click here to view the count '),
          
                Text('1' ,style: TextStyle(
                  fontSize: 25
                ),),
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(onPressed: (){}, label: Text('Minus')),
                    SizedBox(width: 10,),
                    ElevatedButton.icon(onPressed: (){}, label: Text('Add') ,icon: Icon(Icons.add),),
                  ],
                ),
                ElevatedButton.icon(onPressed: (){}, label: Text('Clear'),icon: Icon(Icons.delete),),
            ],
          ),
        ),
      ),
    );
  }
}