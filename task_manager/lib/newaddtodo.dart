import 'package:flutter/material.dart';
import 'package:task_manager/todo.dart';

class NewTodoView extends StatefulWidget {
  final Todo item;

  NewTodoView({ required this.item });

  @override
  _NewTodoViewState createState() => _NewTodoViewState();
}

class _NewTodoViewState extends State<NewTodoView> {
  late TextEditingController titleController;

  @override
  void initState() {
    super.initState();
    titleController = new TextEditingController(
      // ignore: unnecessary_null_comparison
      text: widget.item != null ? widget.item.title : null
    );
  }

  @override
  Widget build(BuildContext context) {
    var color;
        return Scaffold(
          appBar: AppBar(
            title: Text(
              // ignore: unnecessary_null_comparison
              widget.item != null ? 'Edit todo' : 'New todo',
              key: Key('new-item-title'),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: titleController,
                  autofocus: true,
                  onEditingComplete: submit,
                  decoration: InputDecoration(labelText: 'Title'),
                ),
                SizedBox(height: 14.0,),
                ElevatedButton(
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Theme.of(context).primaryTextTheme.color,
                ),
              ),
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)
                )
              ),
              onPressed: () => submit(),
            )
          ],
        ),
      ),
    );
  }
  void submit(){
    Navigator.of(context).pop(titleController.text);
  }
}