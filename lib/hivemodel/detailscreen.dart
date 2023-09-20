import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/modelDB/data_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final _namecontroller = TextEditingController();
  final _agecontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
         const  Padding(
             padding: EdgeInsets.all(12.0),
             child:  Text("Students Details",
              style: TextStyle(
                fontSize: 36,
                fontWeight:FontWeight.w700,
                color: Colors.red,
              ),),
           ),
            TextFormField(
              controller: _namecontroller,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
            
              ),
            ),
            const SizedBox(
              height: 20,
            ),
             TextFormField(
              controller: _agecontroller,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Age",
            
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 210,top: 20),
             child: ElevatedButton.icon(onPressed: (){
              addBtClick();
             },
              icon:const Icon(Icons.add),
               label: const Text("add student")),
           )
          ],
        ),
    );
  }
  Future<void>addBtClick()async{
     final _name =_namecontroller.text.trim();
     final _age=_agecontroller.text.trim();
     if(_name.isEmpty || _age.isEmpty){
      return ;
     }


   final _student = StudentModel(name: _name, age: _age);
  
   addStudent(_student);
  }
}