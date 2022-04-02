import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link can be used to login the current user on another device, but it
/// must be scanned from QR-code using in-app camera. An alert similar to.
/// "This code can be used to allow someone to log in to your Telegram
/// account. To confirm Telegram login, please go to Settings
class InternalLinkTypeQrCodeAuthentication extends InternalLinkType {
  const InternalLinkTypeQrCodeAuthentication();

  static const String CONSTRUCTOR = 'internalLinkTypeQrCodeAuthentication';

  static InternalLinkTypeQrCodeAuthentication? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InternalLinkTypeQrCodeAuthentication();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
