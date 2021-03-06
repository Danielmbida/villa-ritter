// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/force_hour/watch/watch_force_hour_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/un_register_dialog.dart';
import 'package:apptest/presentation/core/villa_datas.dart';
import 'package:apptest/presentation/home/widgets/buttons/admin_button_form.dart';
import 'package:apptest/presentation/home/widgets/buttons/left_button_form.dart';
import 'package:apptest/presentation/home/widgets/buttons/present_button_form.dart';
import 'package:apptest/presentation/home/widgets/image_profil_form.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_functions/cloud_functions.dart';

class ProfileView extends StatefulWidget {
  final User user;
  final bool presence;
  final List<String> listToken;

  const ProfileView({
    required this.user,
    required this.presence,
    required this.listToken,
  });

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  SharedPreferences? prefs;
  bool isImg = true;
  bool logout = false;
  bool isConnected = true;

  File? _pickedImageFile;

  IconData villaStateIcon = FontAwesomeIcons.clock;
  Color villaStateIconColor = const Color(0xff20544c);

  @override
  void initState() {
    _getImage();
    super.initState();
  }

  ///Récupère l'image dans les sharedPreference
  ///et l'assigne à la variable _pickedImageFile
  Future<File?>? _getImage() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      _pickedImageFile = File(prefs!.getString("img")!);
    });
    return _pickedImageFile;
  }

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    final double padHorizontal = 5 / mediaWidth * mediaWidth;

    return BlocBuilder<InternetCubit, InternetState>(
      builder: (context, state) {
        state.maybeMap(
          orElse: () => Container(),
          connected: (s) {
            isConnected = true;
          },
          disconnected: (_) {
            isConnected = false;
          },
        );
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: padHorizontal,
          ),
          child: Stack(
            children: [
              Positioned(
                top: mediaHeight * 0.02,
                left: mediaWidth * .30,
                child: InkWell(
                  child: ImageProfilForm(
                    pickedImageFile: _pickedImageFile,
                  ),
                  onTap: () {
                    _addImageModal(context);
                  },
                ),
              ),
              Positioned(
                left: mediaWidth * 0.02,
                child: Image.asset(
                  "assets/images/logo.png",
                  color: Colors.black,
                  width: mediaWidth * 0.15,
                  height: mediaHeight * 0.12,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PopupMenuButton(
                    icon: const Icon(
                      FontAwesomeIcons.ellipsisVertical,
                      color: Colors.white,
                    ),
                    onSelected: (value) {
                      switch (value) {
                        case 1:
                          context.read<AuthBloc>().add(
                                const AuthEvent.signedOut(),
                              );
                          break;
                        case 2:
                          _showProfileDialog(context);
                          break;
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text(
                          AppLocalizations.of(context)!.logout_string,
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text(
                          AppLocalizations.of(context)!.my_account_menu_string,
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(),
                ],
              ),
              if (widget.user.email == VillaDatas.villaEmail)
                Positioned(
                  right: mediaWidth * .37,
                  top: mediaHeight * .20,
                  child: InkWell(
                    onTap: () {
                      context.router.push(
                        SendNotificationsRoute(listToken: widget.listToken),
                      );
                    },
                    child: const Card(
                      elevation: 5,
                      color: Color(0xff20544c),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          // AppLocalizations.of(context)!.management_button,
                          "Notifs",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              Positioned(
                top: mediaHeight * 0.15,
                right: mediaWidth * 0.03,
                child: widget.user.email != VillaDatas.villaEmail
                    ? widget.presence == false
                        ? PrensentButtonForm(
                            user: widget.user,
                          )
                        : LeftButtonForm(
                            user: widget.user,
                          )
                    : const AdminButtonForm(),
              ),
              if (widget.user.email == VillaDatas.villaEmail)
                Positioned(
                  top: mediaHeight * 0.08,
                  right: mediaWidth * 0.10,
                  child: BlocBuilder<WatchForceHourBloc, WatchForceHourState>(
                    builder: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        loadSuccess: (state) {
                          if (state.hours[0].close) {
                            villaStateIcon = FontAwesomeIcons.doorClosed;
                            villaStateIconColor = Colors.red;
                          } else if (state.hours[0].open) {
                            villaStateIcon = FontAwesomeIcons.doorOpen;
                            villaStateIconColor = Colors.amberAccent;
                          } else {
                            villaStateIcon = FontAwesomeIcons.clock;
                            villaStateIconColor = const Color(0xff20544c);
                          }
                        },
                      );
                      return Icon(
                        villaStateIcon,
                        color: villaStateIconColor,
                        size: 30,
                      );
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Future<Object?> _showProfileDialog(BuildContext context) {
    return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: "Modal",
      transitionDuration: const Duration(
        milliseconds: 600,
      ),
      transitionBuilder: (
        context,
        animation,
        secondaryAnimation,
        widget2,
      ) {
        return UnRegisterDialog(
          user: widget.user,
        );
      },
      pageBuilder: (context, _animation1, __animation2) {
        return const Text("");
      },
    );
  }

  Future<dynamic> _addImageModal(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SizedBox(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: Text(
                  AppLocalizations.of(context)!.select_gallery_string,
                ),
                onTap: () {
                  _pickImage(false);
                  Navigator.of(context).pop();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: Text(AppLocalizations.of(context)!.take_photo_string),
                onTap: () {
                  _pickImage(true);
                  Navigator.of(context).pop();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.delete),
                title: Text(
                  AppLocalizations.of(context)!.delete_photo_string,
                  style: const TextStyle(color: Colors.red),
                ),
                onTap: () {
                  _deleteImageFromPreferences();
                  Navigator.of(context).pop();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.close),
                title: Text(AppLocalizations.of(context)!.cancel_string),
                onTap: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        );
      },
    );
  }

  ///Sauvegarde l'image de profile de l'utilisateur
  ///dans les sharedPreferences
  Future<Future<bool>> _setImageFromPreferences(
    String key,
    String value,
  ) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  ///Charge l'image de profil
  Future<XFile?>? _pickImage(bool isCamera) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
      source: !isCamera ? ImageSource.gallery : ImageSource.camera,
    );
    prefs = await SharedPreferences.getInstance();
    setState(() {
      if (pickedImage != null) {
        _setImageFromPreferences("img", pickedImage.path);
        _getImage();
      }
    });
    return pickedImage;
  }

  ///Supprimer l'image de profile dans la gallerie aussis
  Future<File?>? _deleteImageFromPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      _pickedImageFile = null;
    });
    return _pickedImageFile;
  }
}
