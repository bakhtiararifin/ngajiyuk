import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      ],
      child: child,
    );
  }
}
