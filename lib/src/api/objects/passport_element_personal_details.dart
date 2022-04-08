import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's personal details
@immutable
class PassportElementPersonalDetails extends PassportElement {
  const PassportElementPersonalDetails({
    required this.personalDetails,
  });

  /// [personalDetails] Personal details of the user
  final PersonalDetails personalDetails;

  static const String constructor = 'passportElementPersonalDetails';

  static PassportElementPersonalDetails? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementPersonalDetails(
      personalDetails: PersonalDetails.fromJson(json['personal_details'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'personal_details': personalDetails.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
