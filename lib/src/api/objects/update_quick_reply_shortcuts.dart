import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of quick reply shortcuts has changed
@immutable
class UpdateQuickReplyShortcuts extends Update {
  const UpdateQuickReplyShortcuts({
    required this.shortcutIds,
  });

  /// [shortcutIds] The new list of identifiers of quick reply shortcuts
  final List<int> shortcutIds;

  static const String constructor = 'updateQuickReplyShortcuts';

  static UpdateQuickReplyShortcuts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcuts(
      shortcutIds: List<int>.from(
          ((json['shortcut_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_ids': shortcutIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
