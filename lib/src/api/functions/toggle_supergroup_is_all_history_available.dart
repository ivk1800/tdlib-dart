import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Toggles whether the message history of a supergroup is available to new
/// members; requires can_change_info administrator right
/// Returns [Ok]
@immutable
class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  const ToggleSupergroupIsAllHistoryAvailable({
    required this.supergroupId,
    required this.isAllHistoryAvailable,
  });

  /// [supergroupId] The identifier of the supergroup
  final int supergroupId;

  /// [isAllHistoryAvailable] The new value of is_all_history_available
  final bool isAllHistoryAvailable;

  static const String constructor = 'toggleSupergroupIsAllHistoryAvailable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'is_all_history_available': isAllHistoryAvailable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
