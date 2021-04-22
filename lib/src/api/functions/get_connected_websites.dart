import '../tdapi.dart';

/// Returns all website where the current user used Telegram to log in
/// Returns [ConnectedWebsites]
class GetConnectedWebsites extends TdFunction {
  GetConnectedWebsites();

  static const String CONSTRUCTOR = 'getConnectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
