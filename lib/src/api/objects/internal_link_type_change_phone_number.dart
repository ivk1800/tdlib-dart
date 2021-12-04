import '../tdapi.dart';

/// The link is a link to the change phone number section of the app
class InternalLinkTypeChangePhoneNumber extends InternalLinkType {
  const InternalLinkTypeChangePhoneNumber();

  static const String CONSTRUCTOR = 'internalLinkTypeChangePhoneNumber';

  static InternalLinkTypeChangePhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeChangePhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
