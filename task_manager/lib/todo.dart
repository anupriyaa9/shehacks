class Todo{
  String title;
  bool completed;
  Todo({
    required this.title,
    this.completed = false,
  });
  Todo.fromMap(Map<String, dynamic> map) :
    title = map['Title'],
    completed = map['Completed'];
  updateTitle(title){
    this.title = title;
  }
  Map toMap(){
    return {
      'Title': title,
      'Completed': completed,
    };
  }
}