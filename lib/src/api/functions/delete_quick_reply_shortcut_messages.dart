import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes specified quick reply messages
/// Returns [Ok]
@immutable
class DeleteQuickReplyShortcutMessages extends TdFunction {
  const DeleteQuickReplyShortcutMessages({
    required this.shortcutId,
    required this.messageIds,
  });

  /// [shortcutId] Unique identifier of the quick reply shortcut to which the
  /// messages belong
  final int shortcutId;

  /// [messageIds] Unique identifiers of the messages
  final List<int> messageIds;

  static const String constructor = 'deleteQuickReplyShortcutMessages';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
