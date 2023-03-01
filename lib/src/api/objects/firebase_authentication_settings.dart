import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains settings for Firebase Authentication in the official applications
@immutable
abstract class FirebaseAuthenticationSettings extends TdObject {
  const FirebaseAuthenticationSettings();

  static const String constructor = 'firebaseAuthenticationSettings';

  /// Inherited by:
  /// [FirebaseAuthenticationSettingsAndroid]
  /// [FirebaseAuthenticationSettingsIos]
  static FirebaseAuthenticationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case FirebaseAuthenticationSettingsAndroid.constructor:
        return FirebaseAuthenticationSettingsAndroid.fromJson(json);
      case FirebaseAuthenticationSettingsIos.constructor:
        return FirebaseAuthenticationSettingsIos.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
