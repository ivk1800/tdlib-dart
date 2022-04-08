import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Passport element containing the user's email address
@immutable
class PassportElementEmailAddress extends PassportElement {
  const PassportElementEmailAddress({
    required this.emailAddress,
  });

  /// [emailAddress] Email address
  final String emailAddress;

  static const String constructor = 'passportElementEmailAddress';

  static PassportElementEmailAddress? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElementEmailAddress(
      emailAddress: json['email_address'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'email_address': emailAddress,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
