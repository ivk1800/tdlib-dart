import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes name of a quick reply shortcut
/// Returns [Ok]
@immutable
class SetQuickReplyShortcutName extends TdFunction {
  const SetQuickReplyShortcutName({
    required this.shortcutId,
    required this.name,
  });

  /// [shortcutId] Unique identifier of the quick reply shortcut
  final int shortcutId;

  /// [name] New name for the shortcut. Use checkQuickReplyShortcutName to check
  /// its validness
  final String name;

  static const String constructor = 'setQuickReplyShortcutName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
