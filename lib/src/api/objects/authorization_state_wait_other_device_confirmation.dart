import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user needs to confirm authorization on another logged in device by
/// scanning a QR code with the provided link
@immutable
class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  const AuthorizationStateWaitOtherDeviceConfirmation({
    required this.link,
  });

  /// [link] A tg:// URL for the QR code. The link will be updated frequently
  final String link;

  static const String constructor =
      'authorizationStateWaitOtherDeviceConfirmation';

  static AuthorizationStateWaitOtherDeviceConfirmation? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitOtherDeviceConfirmation(
      link: json['link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
