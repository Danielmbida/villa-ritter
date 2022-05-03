import 'dart:io';
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:apptest/presentation/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:apptest/domain/auth/user.dart' as auth;
import 'package:auto_route/auto_route.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileView extends StatefulWidget {
  final auth.User user;

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
    //  prefs = await SharedPreferences.getInstance();
    // _pickedImageFile = File(prefs!.getString("img")!);
    // print(prefs!.getString("img"));
    _getImage();
    if (widget.user.present) {
      setState(() {
        isPresence = true;
        // ignore: avoid_print
        print("${widget.user.name} est dans la villa");
      });
    }
    super.initState();
  }

  ///charge l'image dans le circle avatar depuis la source choisit

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
            BlocListener<UserWatcherMeBloc, UserWatcherMeState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () {},
                  initial: (_) {},
                  loadSuccess: (user) {
                    setState(
                      () {
                        nbUser = user.users.size;
                        if (nbUser > 0) {
                          isPresence = true;
                        } else {
                          isPresence = false;
                        }
                      },
                    );
                  },
                  loadFailure: (_) {
                    setState(() {
                      isPresence = false;
                    });
                  },
                  loadInProgress: (_) {},
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _displayNetworkIcons(),
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
                  top: mediaHeight * 0.09,
                  left: mediaWidth * 0.28,
                  child: Column(
                    children: [
                      _imageProfile(context),
                    ],
                  ),
                ),
                Positioned(
                  top: mediaHeight * 0.22,
                  left: mediaWidth * 0.35,
                  child: InkWell(
                    onTap: () {
                      _showPicker(context);
                    },
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
                ),
                Positioned(
                  top: mediaHeight * 0.18,
                  right: mediaWidth * 0.02,
                  child: !widget.user.email.contains("admin")
                      ? isPresence == false
                          ? _buttonPresent(context, false)
                          : _buttonPresent(context, true)
                      : _buttonAdmin(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  ///Sauvegarde l'image de profile de l'utilisateur
  ///dans les sharedPreferences
  Future<Future<bool>> _setImageFromPreferences(String key, String value) async {
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
        _setImageFromPreferences("img", pickedImage.path.toString());
        _getImage();
      }
      // else {
      //   print('No image selected');
      // }
    });
    return pickedImage;
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

  ///Supprimer l'image de profile dans la gallerie aussis
  Future<File?>? _deleteImageFromPreferences() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      _pickedImageFile = null;
    });
    return _pickedImageFile;
  }

  ///Afficher les icons instagram et snap en haut de la page
  PopupMenuButton _displayNetworkIcons() {
    const String logoutText = "Se déconnecter";
    return PopupMenuButton(
      itemBuilder: (context) => [
        if (!logout)
          PopupMenuItem(
            child: GestureDetector(
              onTap: () {
                // BlocProvider.of<AuthBloc>(context).add(
                //   const AuthEvent.signedOut(),
                // );
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
                setState(() {
                  logout = true;
                });
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     // print("déconnection");
                  //     context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  //   },
                  //   icon: const Icon(
                  //     Icons.logout,
                  //     color: Colors.black,
                  //   ),
                  // ),
                  const Text(logoutText)
                ],
              ),
            ),
          ),
      ],
    );
  }

  ///Ouvre la modal permettant à l'utilisateur de choisir la provenance de
  ///sa photo de profile (galerie ou prendre une photo)
  void _showPicker(BuildContext context) {
    const String gellerySource = "Sélectionner dans la galerie";
    const String cameraSource = "Prendre une photo";
    const String cancel = "Annuler";
    const String deleted = "Supprimer la photo";
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: SizedBox(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text(gellerySource),
                    onTap: () {
                      _pickImage(false);
                      Navigator.of(context).pop();
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: const Text(cameraSource),
                    onTap: () {
                      _pickImage(true);
                      Navigator.of(context).pop();
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.delete),
                    title: const Text(
                      deleted,
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
                    title: const Text(cancel),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  /// Création du circleAvatar pour la
  /// photo de profil de l'utilisateur
  Padding _imageProfile(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    const IconData addImgIcon = Icons.person;
    const Color addImgColorIcon = Colors.white;
    final addImgSizeIcon = mediaHeight * 0.15;
    final double radiusCircle = mediaHeight * 0.08;
    final Color? circleColor = Colors.grey[300];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {
          _showPicker(context);
        },
        child: Column(
          children: [
            Stack(
              children: [
                if (_pickedImageFile != null)
                  CircleAvatar(
                    radius: radiusCircle,
                    child: CircleAvatar(
                      radius: radiusCircle - 2,
                      backgroundImage: FileImage(
                        _pickedImageFile!,
                      ),
                    ),
                  )
                else
                  CircleAvatar(
                    radius: radiusCircle,
                    backgroundColor: circleColor,
                    child: CircleAvatar(
                      radius: radiusCircle,
                      backgroundColor: circleColor,
                      child: Icon(
                        addImgIcon,
                        size: addImgSizeIcon,
                        color: addImgColorIcon,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///Affiche le boutton de scanne
  InkWell _buttonPresent(BuildContext context, bool isLeft) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    final Color colorIcon;
    final IconData icon;
    if (isLeft) {
      colorIcon = Colors.red;
      icon = FontAwesomeIcons.signOutAlt;
    } else {
      colorIcon = Colors.green.shade800;
      icon = Icons.qr_code;
    }
    return InkWell(
      onTap: () {
        if (isConnected == true) {
          // context.router.push(const ScanRoute());
          print(isConnected);
          !isLeft
              ? context.router.push(const ScanRoute())
              : BlocProvider.of<UserActorBloc>(context).add(
                  UserActorEvent.left(
                    widget.user.copyWith(
                      present: false,
                    ),
                  ),
                );
        } else {
          Const.showNoInternetDialog(context);
        }
      },
      child: Card(
        // color: Colors.green[800],
        color: colorIcon,
        child: SizedBox(
          child: Column(
            children: [
              Icon(
                // Icons.qr_code,
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

  ///Bouton sortir de la villa
  TextButton _buttonLeft(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {
        BlocProvider.of<UserActorBloc>(context).add(
          UserActorEvent.left(
            widget.user.copyWith(
              present: false,
            ),
          ),
        );
      },
      child: InkWell(
        child: Card(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(8.0 / mediaWidth * mediaWidth),
            child: SizedBox(
              child: Column(
                children: [
                  Icon(
                    FontAwesomeIcons.signOutAlt,
                    size: 60 / mediaWidth * mediaWidth,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///Bouton permettant à l'utilisateur
  ///de voir la liste des personnes
  ///présentent dans la villa
  TextButton _buttonAdmin(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {
        context.router.push(const UserManageRoute());
      },
      child: InkWell(
        child: Card(
          color: Colors.grey,
          child: Padding(
            padding: EdgeInsets.all(8.0 / mediaHeight * mediaHeight),
            child: SizedBox(
              child: Column(
                children: [
                  Icon(
                    Icons.people,
                    size: 60 / mediaHeight * mediaHeight,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
