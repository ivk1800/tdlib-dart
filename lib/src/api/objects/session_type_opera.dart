import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on the Opera browser
@immutable
class SessionTypeOpera extends SessionType {
  const SessionTypeOpera();

  static const String constructor = 'sessionTypeOpera';

  static SessionTypeOpera? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeOpera();
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
