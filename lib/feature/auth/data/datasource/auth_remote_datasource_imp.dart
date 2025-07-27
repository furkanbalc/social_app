import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_app/core/enums/firebase_collection_keys.dart';
import 'package:social_app/feature/auth/data/models/auth_result_model.dart';
import 'package:social_app/feature/auth/data/datasource/auth_remote_datasource.dart';
import 'package:social_app/feature/auth/data/models/app_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthRemoteDatasourceImp implements AuthRemoteDatasource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  late final CollectionReference usersCollection = _firebaseFirestore.collection(FirebaseCollectionKeys.users.name);

  @override
  Future<AuthResultModel> register({
    required String username,
    required String email,
    required String password,
  }) async {
    /// attempt to create user with email and password
    UserCredential credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    /// create a new user in the database
    AppUser user = AppUser(
      id: credential.user?.uid ?? '',
      email: email,
      username: username,
    );

    /// create a new user in the database
    await usersCollection.doc(credential.user?.uid).set(user.toJson());

    /// return the user
    return AuthSuccessModel(
      isSuccess: true,
      token: credential.user?.uid,
      user: user,
    );
  }

  @override
  Future<void> login({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
