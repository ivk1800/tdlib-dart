import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Disconnects website from the current user's Telegram account
/// Returns [Ok]
class DisconnectWebsite extends TdFunction {
  DisconnectWebsite({required this.websiteId});

  /// [websiteId] Website identifier
  final int websiteId;

  static const String CONSTRUCTOR = 'disconnectWebsite';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'website_id': this.websiteId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
