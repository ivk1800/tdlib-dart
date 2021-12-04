import '../tdapi.dart';

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
}
