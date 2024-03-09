import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a quick reply shortcut
/// Returns [Ok]
@immutable
class DeleteQuickReplyShortcut extends TdFunction {
  const DeleteQuickReplyShortcut({
    required this.shortcutId,
  });

  /// [shortcutId] Unique identifier of the quick reply shortcut
  final int shortcutId;

  static const String constructor = 'deleteQuickReplyShortcut';

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
