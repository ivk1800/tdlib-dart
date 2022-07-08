import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on an Xbox console
@immutable
class SessionTypeXbox extends SessionType {
  const SessionTypeXbox();

  static const String constructor = 'sessionTypeXbox';

  static SessionTypeXbox? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeXbox();
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
