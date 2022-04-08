import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs the server about the number of pending bot updates if they haven't
/// been processed for a long time; for bots only
/// Returns [Ok]
@immutable
class SetBotUpdatesStatus extends TdFunction {
  const SetBotUpdatesStatus({
    required this.pendingUpdateCount,
    required this.errorMessage,
  });

  /// [pendingUpdateCount] The number of pending updates
  final int pendingUpdateCount;

  /// [errorMessage] The last error message
  final String errorMessage;

  static const String constructor = 'setBotUpdatesStatus';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'pending_update_count': pendingUpdateCount,
        'error_message': errorMessage,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
