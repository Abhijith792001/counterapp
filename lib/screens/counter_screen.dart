import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/controller.dart';

class CounterScreen extends StatelessWidget {
   CounterScreen({super.key});
  final controller = Get.put(CounterController());
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
          
                Obx(()=> Text('${controller.count}' ,style: TextStyle(
                    fontSize: 25
                  ),),
                ),
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(onPressed: (){
                      controller.dcrement();
                    }, label: Text('Minus'),
                    icon: Icon(Icons.remove),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton.icon(onPressed: (){
                      controller.increment();
                    }, label: Text('Add') ,icon: Icon(Icons.add),),
                  ],
                ),
                ElevatedButton.icon(onPressed: (){
                  controller.reset();
                }, label: Text('Clear'),icon: Icon(Icons.delete),),
            ],
          ),
        ),
      ),
    );
  }
}