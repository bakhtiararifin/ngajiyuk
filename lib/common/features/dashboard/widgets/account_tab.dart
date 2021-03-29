import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/features/login/blocs/login/login_bloc.dart';
import 'package:ngajiyuk/auth/features/login/widgets/login_page.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/auth/blocs/logout/logout_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/theme/app_colors.dart';
import 'package:ngajiyuk/core/theme/app_sizes.dart';
import 'package:ngajiyuk/core/theme/app_typography.dart';

class AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (User user) => _LoggedInAccount(),
          orElse: () => _NotLoggedInUser(),
        );
      },
    );
  }
}

class _NotLoggedInUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingRegular),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image(
              image: AssetImage('assets/images/account_image.png'),
            ),
          ),
          SizedBox(height: AppSizes.paddingRegular),
          Text(
            'Data akun kamu akan tampil disini',
            textAlign: TextAlign.center,
            style: AppTypography.body,
          ),
          SizedBox(height: AppSizes.paddingRegular),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              child: Text(
                'Login',
                style: AppTypography.body.copyWith(
                  color: AppColors.grey,
                ),
              ),
              onPressed: () => _gotoLogin(context),
            ),
          ),
        ],
      ),
    );
  }

  void _gotoLogin(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) {
          return BlocProvider<LoginBloc>(
            create: (_) => getIt<LoginBloc>(),
            child: LoginPage(),
          );
        },
      ),
    );
  }
}

class _LoggedInAccount extends StatelessWidget {
  const _LoggedInAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        _UserProfile(),
        SizedBox(height: AppSizes.paddingLarge),
        _LogoutButton(),
        SizedBox(height: AppSizes.paddingLarge),
        Text(
          'ngajiyuk v1.0.1',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.overline,
        ),
        SizedBox(height: AppSizes.paddingLarge),
      ],
    );
  }
}

class _UserProfile extends StatelessWidget {
  const _UserProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (User user) {
            return Column(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundColor: Theme.of(context).primaryColorLight,
                  backgroundImage: NetworkImage(user.photoUrl),
                ),
                SizedBox(height: 16),
                Text(
                  user.name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 8),
                Text(
                  user.email,
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}

class _LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: BlocConsumer<LogoutBloc, LogoutState>(
        listener: (context, state) {
          state.maybeWhen(
            success: () => _gotoLoginPage(context),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text('Keluar'),
            onTap: () => _logout(context),
          );
        },
      ),
    );
  }

  void _gotoLoginPage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => BlocProvider<LoginBloc>(
          create: (_) => getIt<LoginBloc>(),
          child: LoginPage(),
        ),
      ),
    );
  }

  void _logout(BuildContext context) {
    BlocProvider.of<LogoutBloc>(context).add(LogoutEvent.logout());
  }
}
