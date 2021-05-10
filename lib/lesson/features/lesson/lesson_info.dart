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
            lesson.title ?? '',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 8),
          Text(lesson.description ?? ''),
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
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: Icon(Icons.info),
              label: Text('Menunggu pembayaran'),
              onPressed: () => _showPaymentInfoDialog(context),
            ),
          ),
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

  void _showPaymentInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Menunggu Pembayaran'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                _ConfirmationDescription(lesson: lesson),
                SizedBox(height: 16),
                _HowToPay(lesson: lesson),
                SizedBox(height: 16),
                Text(
                  'Setelah itu kami akan mengkonfirmasi pembayaran kamu dan kamu bisa tonton video pembelajaran yang sudah kamu pilih.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
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

class _HowToPay extends StatelessWidget {
  const _HowToPay({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1. '),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: 'Transfer pembayaran sebesar ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: Formatter.formatNumber(lesson.sellPrice),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' ke rekening ',
                    ),
                    TextSpan(
                      text:
                          'Bank Syariah Mandiri nomor 12345678 a/n Bakhtiar Arifin',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' dan simpan bukti transfer nya.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('2. '),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text:
                      'Kirim bukti transfer, nama user, dan judul pelajaran via whatsapp ke nomor ',
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: '08123456789',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ConfirmationDescription extends StatelessWidget {
  const _ConfirmationDescription({
    Key? key,
    required this.lesson,
  }) : super(key: key);

  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Sedikit lagi kamu bisa menonton video ',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: lesson.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '. Kamu tinggal melakukan langkah langkah dibawah ini:',
          ),
        ],
      ),
    );
  }
}
