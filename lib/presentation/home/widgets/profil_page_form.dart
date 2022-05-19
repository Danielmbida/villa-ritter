import 'dart:io';
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/home/widgets/buttons/admin_button_form.dart';
import 'package:apptest/presentation/home/widgets/buttons/left_button_form.dart';
import 'package:apptest/presentation/home/widgets/buttons/present_button_form.dart';
import 'package:apptest/presentation/home/widgets/image_profil_form.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileView extends StatefulWidget {
  final User user;

  const ProfileView({required this.user});

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  bool isPresence = false;
  Color btnScanColor = Colors.white;
  Color? qrColor = const Color(0xFF8d0103);
  int nbUser = 0;
  Image? imageFromPreferences;
  SharedPreferences? prefs;
  bool isImg = true;
  bool logout = false;
  bool isConnected = true;

  File? _pickedImageFile;
  @override
  void initState() {
    _getImage();
    if (widget.user.present) {
      setState(() {
        isPresence = true;
      });
    }
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
    final String userName = widget.user.name;
    const String textNameFonts = 'Open sans';
    final double textNameSize = mediaHeight * 0.04;
    final double padVertical = 25 / mediaHeight * mediaHeight;
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
        return MultiBlocListener(
          listeners: [
            BlocListener<UserActorBloc, UserActorState>(
              listener: (context, state) {
                state.map(
                  initial: (_) {},
                  updatedSuccess: (_) {
                    setState(() {
                      isPresence = true;
                    });
                  },
                  updatedFailure: (_) {},
                  actionInProgress: (_) {},
                  isLeft: (_) {
                    setState(() {
                      isPresence = false;
                    });
                  },
                );
              },
            ),
          ],
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: padVertical,
              horizontal: padHorizontal,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: mediaHeight * 0.09,
                  left: mediaWidth * 0.28,
                  child: InkWell(
                    child: ImageProfilForm(pickedImageFile: _pickedImageFile),
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
                Positioned(
                  top: mediaHeight * 0.22,
                  left: mediaWidth * 0.35,
                  child: CircleAvatar(
                    radius: mediaHeight * 0.015,
                    backgroundColor: Colors.blue,
                    child: const Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: GestureDetector(
                            onTap: () {
                              context.read<AuthBloc>().add(
                                    const AuthEvent.signedOut(),
                                  );
                            },
                            child: const Text("Se déconnecter"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: textNameSize,
                            decoration: TextDecoration.none,
                            fontFamily: textNameFonts,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: mediaHeight * 0.18,
                  right: mediaWidth * 0.02,
                  child: !widget.user.email.contains("admin")
                      ? isPresence == false
                          ? PrensentButtonForm(
                              isConnected: isConnected,
                              widget: widget,
                              isLeft: false,
                            )
                          : LeftButtonForm(
                              isConnected: isConnected,
                              widget: widget,
                              isLeft: true,
                            )
                      : const AdminButtonForm(),
                ),
              ],
            ),
          ),
        );
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
                title: const Text("Sélectionner dans la galerie"),
                onTap: () {
                  _pickImage(false);
                  Navigator.of(context).pop();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text("Prendre une photo"),
                onTap: () {
                  _pickImage(true);
                  Navigator.of(context).pop();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.delete),
                title: const Text(
                  "Supprimer la photo",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  _deleteImageFromPreferences();
                  Navigator.of(context).pop();
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.close),
                title: const Text("Annuler"),
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
      String key, String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(key, value);
  }

  ///Charge l'image de profil
  Future<XFile?>? _pickImage(bool isCamera) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(
        source: !isCamera ? ImageSource.gallery : ImageSource.camera);
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
