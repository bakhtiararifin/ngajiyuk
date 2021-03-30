import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lesson_items/lesson_items_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';

class GlobalBlocProvider extends StatelessWidget {
  final Widget child;

  const GlobalBlocProvider({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (_) => getIt<UserBloc>(),
        ),
        BlocProvider<LessonsBloc>(
          create: (_) => getIt<LessonsBloc>(),
        ),
        BlocProvider<LessonBloc>(
          create: (_) => getIt<LessonBloc>(),
        ),
        BlocProvider<LessonItemsBloc>(
          create: (_) => getIt<LessonItemsBloc>(),
        ),
      ],
      child: child,
    );
  }
}
