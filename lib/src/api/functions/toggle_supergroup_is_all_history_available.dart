import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Toggles whether the message history of a supergroup is available to new
/// members; requires can_change_info administrator right
/// Returns [Ok]
class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  ToggleSupergroupIsAllHistoryAvailable(
      {required this.supergroupId, required this.isAllHistoryAvailable});

  /// [supergroupId] The identifier of the supergroup
  final int supergroupId;

  /// [isAllHistoryAvailable] The new value of is_all_history_available
  final bool isAllHistoryAvailable;

  static const String CONSTRUCTOR = 'toggleSupergroupIsAllHistoryAvailable';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'is_all_history_available': this.isAllHistoryAvailable,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
