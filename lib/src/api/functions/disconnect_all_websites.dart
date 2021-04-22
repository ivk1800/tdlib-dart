import '../tdapi.dart';

/// Disconnects all websites from the current user's Telegram account
/// Returns [Ok]
class DisconnectAllWebsites extends TdFunction {
  DisconnectAllWebsites();

  static const String CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
