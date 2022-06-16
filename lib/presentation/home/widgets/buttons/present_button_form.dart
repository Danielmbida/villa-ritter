import 'package:apptest/application/force_hour/watch/watch_force_hour_bloc.dart';
import 'package:apptest/application/horaire/horaire_cubit.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrensentButtonForm extends StatelessWidget {
  const PrensentButtonForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    bool villaIsClose = false;
    return BlocBuilder<WatchForceHourBloc, WatchForceHourState>(
      builder: (context, state) {
        state.maybeMap(
          orElse: () {},
          loadSuccess: (state) {
            if (state.hours[0].close) {
              villaIsClose = true;
            }
          },
        );
        return BlocListener<HoraireCubit, HoraireState>(
          listener: (context, state) {
            state.map(
              ouvert: (_) {
                villaIsClose = false;
              },
              ferme: (_) {
                villaIsClose = true;
              },
            );
          },
          child: InkWell(
            onTap: () {
              if (villaIsClose == false) {
                context.router.push(const ScanRoute());
                print("ouvert");
              } else {
                _showVillaIsClosedDialog(context);
              }
            },
            child: Card(
              color: Theme.of(context).primaryColor,
              child: SizedBox(
                child: Column(
                  children: [
                    Icon(
                      Icons.qr_code,
                      size: mediaHeight * .090,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _showVillaIsClosedDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "${AppLocalizations.of(context)!.villa_is_string} ${AppLocalizations.of(context)!.villa_close_string}",
          ),
          content: Text(
            AppLocalizations.of(context)!.cannot_scan_string,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Ok"),
            )
          ],
        );
      },
    );
  }
}
