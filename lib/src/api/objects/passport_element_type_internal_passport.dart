import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's internal passport
@immutable
class PassportElementTypeInternalPassport extends PassportElementType {
  const PassportElementTypeInternalPassport();

  static const String constructor = 'passportElementTypeInternalPassport';

  static PassportElementTypeInternalPassport? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeInternalPassport();
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
