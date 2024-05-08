import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Confirms ownership of a phone number to prevent account deletion while
/// handling links of the type internalLinkTypePhoneNumberConfirmation
@immutable
class PhoneNumberCodeTypeConfirmOwnership extends PhoneNumberCodeType {
  const PhoneNumberCodeTypeConfirmOwnership({
    required this.hash,
  });

  /// [hash] Hash value from the link
  final String hash;

  static const String constructor = 'phoneNumberCodeTypeConfirmOwnership';

  static PhoneNumberCodeTypeConfirmOwnership? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PhoneNumberCodeTypeConfirmOwnership(
      hash: json['hash'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hash': hash,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
