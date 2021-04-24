import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/features/login/blocs/login/login_bloc.dart';
import 'package:ngajiyuk/auth/features/login/widgets/login_page.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/common/services/formatter.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/lesson/features/confirmation/confirmation_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

class LessonInfo extends StatelessWidget {
  final Lesson lesson;

  const LessonInfo({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lesson.title,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 8),
          Text(lesson.description),
          if (!lesson.isFree) _LessonPricing(lesson: lesson),
        ],
      ),
    );
  }
}

class _LessonPricing extends StatelessWidget {
  const _LessonPricing({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    if (lesson.isFree || lesson.paid) {
      return Container();
    }

    if (lesson.bought && !lesson.paid) {
      return Column(
        children: [
          SizedBox(height: 8),
          Text(
              'Dalam proses verifikasi pembayaran. Segera lakukan pembayaran jika kamu belum melakukan.'),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(
          Formatter.formatNumber(lesson.sellPrice),
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => _buyLesson(context),
            child: Text('Beli Sekarang'),
          ),
        ),
      ],
    );
  }

  void _buyLesson(BuildContext context) {
    final User? user = context.read<UserBloc>().state.maybeWhen(
          success: (user) => user,
          orElse: () => null,
        );

    if (user != null) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => ConfirmationPage()),
      );
    } else {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) {
            return BlocProvider<LoginBloc>(
              create: (_) => getIt<LoginBloc>(),
              child: LoginPage(),
            );
          },
        ),
        (route) => route.isFirst,
      );
    }
  }
}
