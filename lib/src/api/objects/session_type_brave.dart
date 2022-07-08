import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The session is running on the Brave browser
@immutable
class SessionTypeBrave extends SessionType {
  const SessionTypeBrave();

  static const String constructor = 'sessionTypeBrave';

  static SessionTypeBrave? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SessionTypeBrave();
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
