import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link can be used to confirm ownership of a phone number to prevent
/// account deletion. Call sendPhoneNumberConfirmationCode with the given hash
/// and phone number to process the link
class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  InternalLinkTypePhoneNumberConfirmation(
      {required this.hash, required this.phoneNumber});

  /// [hash] Hash value from the link
  final String hash;

  /// [phoneNumber] Phone number value from the link
  final String phoneNumber;

  static const String CONSTRUCTOR = 'internalLinkTypePhoneNumberConfirmation';

  static InternalLinkTypePhoneNumberConfirmation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypePhoneNumberConfirmation(
        hash: json['hash'], phoneNumber: json['phone_number']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'hash': this.hash,
        'phone_number': this.phoneNumber,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
