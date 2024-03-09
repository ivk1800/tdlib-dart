import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A quick reply shortcut and all its messages were deleted
@immutable
class UpdateQuickReplyShortcutDeleted extends Update {
  const UpdateQuickReplyShortcutDeleted({
    required this.shortcutId,
  });

  /// [shortcutId] The identifier of the deleted shortcut
  final int shortcutId;

  static const String constructor = 'updateQuickReplyShortcutDeleted';

  static UpdateQuickReplyShortcutDeleted? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateQuickReplyShortcutDeleted(
      shortcutId: json['shortcut_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
