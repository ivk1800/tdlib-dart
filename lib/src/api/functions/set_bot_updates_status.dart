import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Informs the server about the number of pending bot updates if they haven't
/// been processed for a long time; for bots only
/// Returns [Ok]
class SetBotUpdatesStatus extends TdFunction {
  SetBotUpdatesStatus(
      {required this.pendingUpdateCount, required this.errorMessage});

  /// [pendingUpdateCount] The number of pending updates
  final int pendingUpdateCount;

  /// [errorMessage] The last error message
  final String errorMessage;

  static const String CONSTRUCTOR = 'setBotUpdatesStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'pending_update_count': this.pendingUpdateCount,
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
