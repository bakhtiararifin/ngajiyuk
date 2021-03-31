import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/auth/blocs/logout/logout_bloc.dart';
import 'package:ngajiyuk/auth/features/login/blocs/login/login_bloc.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/home_page.dart';
import 'package:ngajiyuk/common/widgets/loading_button.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/core/theme/app_sizes.dart';
import 'package:ngajiyuk/core/theme/app_typography.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingMedium),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image(
                      image: AssetImage('assets/images/login_image.png'),
                    ),
                  ),
                  SizedBox(height: AppSizes.paddingExtraLarge),
                  Text(
                    'Selamat Datang',
                    textAlign: TextAlign.center,
                    style: AppTypography.h1,
                  ),
                  SizedBox(height: AppSizes.paddingRegular),
                  Text(
                    'Semoga pengalaman belajar Islam kamu di sini jadi pengalaman belajar yang menyenangkan dan bermanfaat',
                    textAlign: TextAlign.center,
                    style: AppTypography.body,
                  ),
                ],
              ),
            ),
            BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: () => _gotoHomePage(context),
                  error: () => _showError(context),
                  orElse: () {},
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return SizedBox(
                      width: double.infinity,
                      child: LoadingButton(),
                    );
                  },
                  orElse: () {
                    return SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text('Masuk dengan Google'),
                        onPressed: () => _login(context),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => _gotoHomePage(context),
                child: Text(
                  'Nanti Saja',
                  style: AppTypography.small.copyWith(color: AppColors.grey),
                ),
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

  void _showError(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      backgroundColor: Theme.of(context).errorColor,
      content: Text('Login gagal. Silahkan coba beberapa saat lagi.'),
    ));
  }
}
