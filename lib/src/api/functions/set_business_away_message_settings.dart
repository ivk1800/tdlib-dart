import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the business away message settings of the current user. Requires
/// Telegram Business subscription
/// Returns [Ok]
@immutable
class SetBusinessAwayMessageSettings extends TdFunction {
  const SetBusinessAwayMessageSettings({
    this.awayMessageSettings,
  });

  /// [awayMessageSettings] The new settings for the away message of the
  /// business; pass null to disable the away message
  final BusinessAwayMessageSettings? awayMessageSettings;

  static const String constructor = 'setBusinessAwayMessageSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'away_message_settings': awayMessageSettings?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
