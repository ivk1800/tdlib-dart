import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Disconnects all websites from the current user's Telegram account
/// Returns [Ok]
class DisconnectAllWebsites extends TdFunction {
  DisconnectAllWebsites();

  static const String CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
