
import 'dart:convert';

import 'package:numbers_app_clean_architecture/data/models/number_trivia_model.dart';
import 'package:test/test.dart';

import '../../helper/json_reader.dart';

void main (){

   const  numberTrivia =   NumberTriviaModel(number: 42, text: "testing");


   group("Model testing", (){

     test("should return NumberTrivia when fromJson is called  ", (){

       final jsonMap =  json.decode(jsonReader("response.json"));

       final results  = NumberTriviaModel.fromJson(jsonMap);

       expect(results, numberTrivia);

     });


     test("should return jsonMap when toJson is called  ", (){

       final jsonMap =  json.decode(jsonReader("response.json"));

       final results  = numberTrivia.toJson();

       expect(results, jsonMap);

     });
   });

 }