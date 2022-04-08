import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Disconnects website from the current user's Telegram account
/// Returns [Ok]
@immutable
class DisconnectWebsite extends TdFunction {
  const DisconnectWebsite({
    required this.websiteId,
  });

  /// [websiteId] Website identifier
  final int websiteId;

  static const String constructor = 'disconnectWebsite';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'website_id': websiteId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
