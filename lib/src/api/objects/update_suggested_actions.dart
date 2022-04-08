import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of suggested to the user actions has changed
@immutable
class UpdateSuggestedActions extends Update {
  const UpdateSuggestedActions({
    required this.addedActions,
    required this.removedActions,
  });

  /// [addedActions] Added suggested actions
  final List<SuggestedAction> addedActions;

  /// [removedActions] Removed suggested actions
  final List<SuggestedAction> removedActions;

  static const String constructor = 'updateSuggestedActions';

  static UpdateSuggestedActions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSuggestedActions(
      addedActions: List<SuggestedAction>.from((json['added_actions'] ?? [])
          .map((item) => SuggestedAction.fromJson(item))
          .toList()),
      removedActions: List<SuggestedAction>.from((json['removed_actions'] ?? [])
          .map((item) => SuggestedAction.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'added_actions': addedActions.map((item) => item.toJson()).toList(),
        'removed_actions': removedActions.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
