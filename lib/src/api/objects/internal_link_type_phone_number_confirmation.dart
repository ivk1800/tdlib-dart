import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link can be used to confirm ownership of a phone number to prevent
/// account deletion. Call sendPhoneNumberConfirmationCode with the given hash
/// and phone number to process the link
@immutable
class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  const InternalLinkTypePhoneNumberConfirmation({
    required this.hash,
    required this.phoneNumber,
  });

  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  static const String constructor = 'internalLinkTypePhoneNumberConfirmation';

  static InternalLinkTypePhoneNumberConfirmation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePhoneNumberConfirmation(
      hash: json['hash'],
      phoneNumber: json['phone_number'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hash': hash,
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
