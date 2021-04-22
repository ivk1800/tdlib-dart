import '../tdapi.dart';

/// The user needs to confirm authorization on another logged in device by
/// scanning a QR code with the provided link
class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  AuthorizationStateWaitOtherDeviceConfirmation({required this.link});

  /// [link] A tg:// URL for the QR code. The link will be updated frequently
  final String link;

  static const String CONSTRUCTOR =
      'authorizationStateWaitOtherDeviceConfirmation';

  static AuthorizationStateWaitOtherDeviceConfirmation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitOtherDeviceConfirmation(link: json['link']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'link': this.link, '@type': CONSTRUCTOR};
}
