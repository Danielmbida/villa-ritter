import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/core/value_objects.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  Future<User> toDomain() async {
    final userInfo =
        // await FirebaseFirestore.instance.collection('users').doc(uid).get()
        await FirebaseFirestore.instance.collection('users').doc(uid).get()
          ..data();

    
    // print(userInfo["localite"].toString());
    // print(userInfo["genre"].toString());
    // print(userInfo["nom"].toString());
    // print(userInfo["email"].toString());
    // print(userInfo["naissance"].toString());
    // print(userInfo["present"]);
    
    return User(
      id: UniqueId.fromUniqueString(uid),
      locality: userInfo['localite'] as String,
      genre: userInfo['genre'] as String,
      name: userInfo['nom'] as String,
      email: userInfo['email'] as String,
      birthDate: userInfo['naissance'] as String,
      present: userInfo['present'] as bool,
      hour: userInfo['arrive'] as String
    );
  }
}
