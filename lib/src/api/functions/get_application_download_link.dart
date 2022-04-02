import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the link for downloading official Telegram application to be used
/// when the current user invites friends to Telegram
/// Returns [HttpUrl]
class GetApplicationDownloadLink extends TdFunction {
  GetApplicationDownloadLink();

  static const String CONSTRUCTOR = 'getApplicationDownloadLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
