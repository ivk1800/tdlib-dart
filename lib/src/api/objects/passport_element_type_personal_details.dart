import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's personal details
@immutable
class PassportElementTypePersonalDetails extends PassportElementType {
  const PassportElementTypePersonalDetails();

  static const String constructor = 'passportElementTypePersonalDetails';

  static PassportElementTypePersonalDetails? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypePersonalDetails();
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
