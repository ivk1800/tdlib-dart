import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes settings for gift receiving of a business account; for bots only
/// Returns [Ok]
@immutable
class SetBusinessAccountGiftSettings extends TdFunction {
  const SetBusinessAccountGiftSettings({
    required this.businessConnectionId,
    required this.settings,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [settings] The new settings
  final GiftSettings settings;

  static const String constructor = 'setBusinessAccountGiftSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'settings': settings.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
