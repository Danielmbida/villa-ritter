import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/no_internet_dialog.dart';
import 'package:apptest/presentation/home/widgets/profil_page_form.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrensentButtonForm extends StatelessWidget {
  const PrensentButtonForm({
      Key? key,
    required this.user,
    required this.isLeft,
  }) : super(key: key);

  // final ProfileView widget;
  final bool isLeft;
  final User user;

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    final Color colorIcon;
    final IconData icon;
    if (isLeft) {
      colorIcon = Colors.red;
      icon = FontAwesomeIcons.signOutAlt;
    } else {
      colorIcon = Theme.of(context).primaryColor;
      icon = Icons.qr_code;
    }
    return InkWell(
      onTap: () {
        // !isLeft
            // ? 
            context.router.push(const ScanRoute());
            // BlocProvider.of<UserActorBloc>(context).add(
            //     UserActorEvent.left(
            //       user.copyWith(
            //         present: false,
            //       ),
            //     ),
            //   );
      },
      child: Card(
        color: colorIcon,
        child: SizedBox(
          child: Column(
            children: [
              Icon(
                icon,
                size: mediaHeight < 650 ? 65 : 80,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
