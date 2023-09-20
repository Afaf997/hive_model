import 'package:flutter/material.dart';
import 'package:hive_db/db/functions/db_functions.dart';
import 'package:hive_db/modelDB/data_model.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: StudentListNotifier,
      builder: (BuildContext ctx, List<StudentModel>studentList, Widget? child){
         return   ListView.separated(
        itemBuilder: (context, index) {
        final data =studentList[index];
      return  ListTile(
           title:Text (data.name),
           subtitle: Text(data.age),
        );
        },
         separatorBuilder: ( context,index) {
         return const Divider();
           },
           itemCount:studentList.length ,
    
      );
      },
    
    );
  }
}