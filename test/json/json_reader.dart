import 'dart:io';

String readJsonFile(String name) => File("test/json/$name").readAsStringSync();