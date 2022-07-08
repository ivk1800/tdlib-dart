import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on the Vivaldi browser
@immutable
class SessionTypeVivaldi extends SessionType {
  const SessionTypeVivaldi();

  static const String constructor = 'sessionTypeVivaldi';

  static SessionTypeVivaldi? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeVivaldi();
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
