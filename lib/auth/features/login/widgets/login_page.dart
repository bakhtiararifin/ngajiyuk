import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/auth/blocs/logout/logout_bloc.dart';
import 'package:ngajiyuk/auth/features/login/blocs/login/login_bloc.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/home_page.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/core/theme/app_typography.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(32),
          children: [
            SizedBox(height: 80),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Image(
                  image: AssetImage('assets/images/login_image.png'),
                  width: 320,
                ),
              ),
            ),
            SizedBox(height: 80),
            Text(
              'Selamat Datang',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 16),
            Text(
              'Semoga pengalaman belajar Islam kamu di platform kami jadi pengalaman belajar yang menyenangkan.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: () => _gotoHomePage(context),
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return ElevatedButton(
                  child: Text('Masuk dengan Google'),
                  onPressed: () => _login(context),
                );
              },
            ),
            TextButton(
              onPressed: () => _gotoHomePage(context),
              child: Text(
                'Nanti Saja',
                style: AppTypography.small.copyWith(color: AppColors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _gotoHomePage(BuildContext context) {
    BlocProvider.of<LessonsBloc>(context).add(LessonsEvent.getLessons());

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider<LogoutBloc>(create: (_) => getIt<LogoutBloc>()),
          ],
          child: HomePage(),
        ),
      ),
    );
  }

  void _login(BuildContext context) async {
    BlocProvider.of<LoginBloc>(context).add(LoginEvent.login());
  }
}
