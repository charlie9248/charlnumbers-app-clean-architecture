import 'dart:io';

String jsonReader(String fileName) => File('test/helper/$fileName').readAsStringSync();