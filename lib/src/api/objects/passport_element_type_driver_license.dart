import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's driver license
@immutable
class PassportElementTypeDriverLicense extends PassportElementType {
  const PassportElementTypeDriverLicense();

  static const String constructor = 'passportElementTypeDriverLicense';

  static PassportElementTypeDriverLicense? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeDriverLicense();
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
