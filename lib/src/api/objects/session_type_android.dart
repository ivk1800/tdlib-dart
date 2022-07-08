import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on an Android device
@immutable
class SessionTypeAndroid extends SessionType {
  const SessionTypeAndroid();

  static const String constructor = 'sessionTypeAndroid';

  static SessionTypeAndroid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeAndroid();
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
