import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Confirms QR code authentication on another device. Returns created session
/// on success
/// Returns [Session]
@immutable
class ConfirmQrCodeAuthentication extends TdFunction {
  const ConfirmQrCodeAuthentication({
    required this.link,
  });

  /// [link] A link from a QR code. The link must be scanned by the in-app
  /// camera
  final String link;

  static const String constructor = 'confirmQrCodeAuthentication';

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
