import 'dart:convert';
import 'dart:ui';
import 'package:http/http.dart' as http;

Future main() async {
  final todo = await fetch();
  print(todo.title);
}

Future<ToDo> fetch() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  var todo = 
  ToDo.fromJson(json);
  return todo;
}


// flutter: {
//   "userId": 1,
//   "id": 1,
//   "title": "delectus aut autem",
//   "completed": false
// }
class ToDo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  ToDo({required this.title,required this.id,required this.userId, required this.completed});

  factory ToDo.fromJson(Map json){
    return ToDo(
  id: json['id'],
  title: json['title'],
  completed: json['completed'],
  userId: json['userId'] );
  }
  
  Map toJson (){
    return {
      'id': id, 
      'userId': userId, 
      'completed': completed, 
      'title': title, 
    };
  }
}