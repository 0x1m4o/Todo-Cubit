import 'package:flutter/material.dart';
import 'package:todo_app_bloc/cubits/active_todo_count/active_todo_count_dart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_bloc/cubits/todo_list/todo_list_cubit.dart';

class TodoHeader extends StatelessWidget {
  const TodoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Todo App',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        BlocBuilder<ActiveTodoCountCubit, ActiveTodoCountState>(
          builder: (context, state) {
            return Text('${state.activeTodoCount} Items Left',
                style: TextStyle(color: Colors.red));
          },
        ),
        // Text(
        //     '${context.watch<ActiveTodoCountCubit>().activeTodoCubit} Items Left',
        //     style: TextStyle(color: Colors.red))
      ],
    );
  }
}