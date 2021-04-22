import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/common/widgets/loading_widget.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konfirmasi Pembelian'),
      ),
      body: BlocBuilder<LessonBloc, LessonState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (Lesson lesson) {
              return ListView(
                padding: EdgeInsets.all(16),
                children: [
                  Icon(
                    Icons.check,
                    size: 128,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(height: 32),
                  RichText(
                    text: TextSpan(
                      text: 'Sedikit lagi kamu bisa menonton video ',
                      style: DefaultTextStyle.of(context).style,
                      children: <TextSpan>[
                        TextSpan(
                          text: lesson.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              '. Kamu tinggal melakukan langkah langkah dibawah ini:',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Column(
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
                                    text: lesson.sellPrice.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ke rekening ',
                                  ),
                                  TextSpan(
                                    text:
                                        'Bank Syariah Mandiri nomor 12345678 a/n Bakhtiar Arifin',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
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
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Setelah itu kami akan mengkonfirmasi pembayaran kamu dan kamu bisa tonton video pembelajaran yang sudah kamu pilih.',
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () => _confirmPayment(context),
                    child: Text('Beli Sekarang'),
                  )
                ],
              );
            },
            orElse: () => LoadingWidget(),
          );
        },
      ),
    );
  }

  void _confirmPayment(BuildContext context) {
    Navigator.of(context).pop();
  }
}
