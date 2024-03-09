import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Loads quick reply messages that can be sent by a given quick reply
/// shortcut. The loaded messages will be sent through
/// updateQuickReplyShortcutMessages
/// Returns [Ok]
@immutable
class LoadQuickReplyShortcutMessages extends TdFunction {
  const LoadQuickReplyShortcutMessages({
    required this.shortcutId,
  });

  /// [shortcutId] Unique identifier of the quick reply shortcut
  final int shortcutId;

  static const String constructor = 'loadQuickReplyShortcutMessages';

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
