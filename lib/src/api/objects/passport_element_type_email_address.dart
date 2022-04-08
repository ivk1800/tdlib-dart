import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's email address
@immutable
class PassportElementTypeEmailAddress extends PassportElementType {
  const PassportElementTypeEmailAddress();

  static const String constructor = 'passportElementTypeEmailAddress';

  static PassportElementTypeEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeEmailAddress();
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
