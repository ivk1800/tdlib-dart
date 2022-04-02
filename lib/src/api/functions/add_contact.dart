import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Adds a user to the contact list or edits an existing contact by their user
/// identifier
/// Returns [Ok]
class AddContact extends TdFunction {
  AddContact({required this.contact, required this.sharePhoneNumber});

  /// [contact] The contact to add or edit; phone number can be empty and needs
  /// to be specified only if known, vCard is ignored
  final Contact contact;

  /// [sharePhoneNumber] True, if the new contact needs to be allowed to see
  /// current user's phone number. A corresponding rule to
  /// userPrivacySettingShowPhoneNumber will be added if needed. Use the field
  /// userFullInfo.need_phone_number_privacy_exception to check whether the
  /// current user needs to be asked to share their phone number
  final bool sharePhoneNumber;

  static const String CONSTRUCTOR = 'addContact';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'contact': this.contact.toJson(),
        'share_phone_number': this.sharePhoneNumber,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
