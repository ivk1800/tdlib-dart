import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's rental agreement
@immutable
class PassportElementTypeRentalAgreement extends PassportElementType {
  const PassportElementTypeRentalAgreement();

  static const String constructor = 'passportElementTypeRentalAgreement';

  static PassportElementTypeRentalAgreement? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementTypeRentalAgreement();
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
