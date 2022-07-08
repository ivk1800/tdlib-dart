import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a user to the contact list or edits an existing contact by their user
/// identifier
/// Returns [Ok]
@immutable
class AddContact extends TdFunction {
  const AddContact({
    required this.contact,
    required this.sharePhoneNumber,
  });

  /// [contact] The contact to add or edit; phone number may be empty and needs
  /// to be specified only if known, vCard is ignored
  final Contact contact;

  /// [sharePhoneNumber] Pass true to share the current user's phone number with
  /// the new contact. A corresponding rule to userPrivacySettingShowPhoneNumber
  /// will be added if needed. Use the field
  /// userFullInfo.need_phone_number_privacy_exception to check whether the
  /// current user needs to be asked to share their phone number
  final bool sharePhoneNumber;

  static const String constructor = 'addContact';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'contact': contact.toJson(),
        'share_phone_number': sharePhoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
