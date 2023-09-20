import 'package:flutter/material.dart';
import 'package:hive_db/modelDB/data_model.dart';

ValueNotifier<List <StudentModel>> StudentListNotifier =ValueNotifier([]);

void addStudent(StudentModel value){
  StudentListNotifier.value.add(value);
 StudentListNotifier.notifyListeners();
}