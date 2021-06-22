import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/auth/blocs/logout/logout_bloc.dart';
import 'package:ngajiyuk/auth/features/login/blocs/login/login_bloc.dart';
import 'package:ngajiyuk/common/features/dashboard/widgets/home_page.dart';
import 'package:ngajiyuk/common/services/dynamic_link_service.dart';
import 'package:ngajiyuk/common/widgets/loading_button.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/core/theme/app_sizes.dart';
import 'package:ngajiyuk/core/theme/app_typography.dart';
import 'package:ngajiyuk/lesson/blocs/lesson/lesson_bloc.dart';
import 'package:ngajiyuk/lesson/blocs/lessons/lessons_bloc.dart';
import 'package:ngajiyuk/lesson/features/lesson/lesson_page.dart';
import 'package:ngajiyuk/lesson/model/lesson/lesson.dart';
import 'package:ngajiyuk/lesson/repositories/lesson_repository.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    getIt<DynamicLinkService>().initDynamicLinks((path, queryParameters) async {
      if (path == '/lesson' && queryParameters['id'] != null) {
        final Lesson lesson = await getIt<LessonRepository>().getLesson(
          queryParameters['id']!,
        );
        _gotoHome(context);
        _gotoLesson(context, lesson);
      }
    });
  }

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
                children: const [
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
                  success: () => _gotoHome(context),
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
                        onPressed: () => _login(context),
                        child: const Text('Login dengan Google'),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () => _gotoHome(context),
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

  void _gotoHome(BuildContext context) {
    BlocProvider.of<LessonsBloc>(context).add(const LessonsEvent.getLessons());

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

  void _gotoLesson(BuildContext context, Lesson lesson) {
    BlocProvider.of<LessonBloc>(context).add(
      LessonEvent.setLesson(lesson),
    );

    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LessonPage()),
    );
  }

  void _login(BuildContext context) {
    BlocProvider.of<LoginBloc>(context).add(const LoginEvent.login());
  }

  void _showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Theme.of(context).errorColor,
      content: const Text('Login gagal. Silahkan coba beberapa saat lagi.'),
    ));
  }
}
