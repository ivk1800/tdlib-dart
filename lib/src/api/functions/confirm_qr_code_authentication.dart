import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Confirms QR code authentication on another device. Returns created session
/// on success
/// Returns [Session]
class ConfirmQrCodeAuthentication extends TdFunction {
  ConfirmQrCodeAuthentication({required this.link});

  /// [link] A link from a QR code. The link must be scanned by the in-app
  /// camera
  final String link;

  static const String CONSTRUCTOR = 'confirmQrCodeAuthentication';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'link': this.link, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
