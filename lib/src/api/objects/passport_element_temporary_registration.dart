import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's temporary registration
@immutable
class PassportElementTemporaryRegistration extends PassportElement {
  const PassportElementTemporaryRegistration({
    required this.temporaryRegistration,
  });

  /// [temporaryRegistration] Temporary registration
  final PersonalDocument temporaryRegistration;

  static const String constructor = 'passportElementTemporaryRegistration';

  static PassportElementTemporaryRegistration? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementTemporaryRegistration(
      temporaryRegistration: PersonalDocument.fromJson(
          json['temporary_registration'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'temporary_registration': temporaryRegistration.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
