import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Settings for Firebase Authentication in the official Android application
@immutable
class FirebaseAuthenticationSettingsAndroid
    extends FirebaseAuthenticationSettings {
  const FirebaseAuthenticationSettingsAndroid();

  static const String constructor = 'firebaseAuthenticationSettingsAndroid';

  static FirebaseAuthenticationSettingsAndroid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const FirebaseAuthenticationSettingsAndroid();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
