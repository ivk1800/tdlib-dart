import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a user by its phone number. Call
/// searchUserByPhoneNumber with the given phone number to process the link.
/// If the user is found, then call createPrivateChat and open the chat
@immutable
class InternalLinkTypeUserPhoneNumber extends InternalLinkType {
  const InternalLinkTypeUserPhoneNumber({
    required this.phoneNumber,
  });

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  static const String constructor = 'internalLinkTypeUserPhoneNumber';

  static InternalLinkTypeUserPhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUserPhoneNumber(
      phoneNumber: json['phone_number'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'phone_number': phoneNumber,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
