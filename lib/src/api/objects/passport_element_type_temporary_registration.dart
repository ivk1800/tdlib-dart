import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's temporary registration
@immutable
class PassportElementTypeTemporaryRegistration extends PassportElementType {
  const PassportElementTypeTemporaryRegistration();

  static const String constructor = 'passportElementTypeTemporaryRegistration';

  static PassportElementTypeTemporaryRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeTemporaryRegistration();
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
