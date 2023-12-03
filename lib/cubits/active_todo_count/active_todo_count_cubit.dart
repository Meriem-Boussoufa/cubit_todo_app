import 'dart:async';
//import 'dart:developer';
//import '../../models/todo_model.dart';
import '../todo_list/todo_list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'active_todo_count_state.dart';

class ActiveTodoCountCubit extends Cubit<ActiveTodoCountState> {
  late final StreamSubscription todoListSubscription;
  final TodoListCubit todoListCubit;
  final int initialActiveTodoCount;

  ActiveTodoCountCubit({
    required this.todoListCubit,
    required this.initialActiveTodoCount,
  }) : super(ActiveTodoCountState(activeTodoCount: initialActiveTodoCount)) {
    // log("***** Active Stream ********");
    // todoListSubscription =
    //     todoListCubit.stream.listen((TodoListState todoListState) {
    //   final int currentActiveTodoCount = todoListState.todos
    //       .where((Todo todo) => !todo.completed)
    //       .toList()
    //       .length;

    //   emit(state.copyWith(activeTodoCount: currentActiveTodoCount));
    // });
  }
  /* @override
  Future<void> close() {
    todoListSubscription.cancel();
    return super.close();
  }*/

// ? using Bloc Listener
  void calculateActiveTodoCount(int activeTodoCount) {
    emit(state.copyWith(activeTodoCount: activeTodoCount));
  }
}
