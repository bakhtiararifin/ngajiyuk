import 'package:ngajiyuk/auth/blocs/user/user_bloc.dart';
import 'package:ngajiyuk/auth/features/login/blocs/login/login_bloc.dart';
import 'package:ngajiyuk/auth/features/login/widgets/login_page.dart';
import 'package:ngajiyuk/auth/models/user/user.dart';
import 'package:ngajiyuk/auth/blocs/logout/logout_bloc.dart';
import 'package:ngajiyuk/core/services/configure_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ngajiyuk/core/theme/app_sizes.dart';

class AccountTab extends StatelessWidget {
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
