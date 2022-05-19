import 'package:avatar_glow/avatar_glow.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

class DisplayNoInternetForm extends StatelessWidget {
  const DisplayNoInternetForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AvatarGlow(
            glowColor: Colors.blueGrey,
            endRadius: 100.0,
            child: Material(
              elevation: 8.0,
              shape: const CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 50,
                child: const Icon(
                  Icons.wifi_off,
                  size: 60,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const Text(
            "Aucune connexion internet trouvée",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          const Text(
            "Veuillez vérifier votre connexion",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
