import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's passport
@immutable
class PassportElementTypePassport extends PassportElementType {
  const PassportElementTypePassport();

  static const String constructor = 'passportElementTypePassport';

  static PassportElementTypePassport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePassport();
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
