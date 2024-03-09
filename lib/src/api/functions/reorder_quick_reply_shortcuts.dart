import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the order of quick reply shortcuts
/// Returns [Ok]
@immutable
class ReorderQuickReplyShortcuts extends TdFunction {
  const ReorderQuickReplyShortcuts({
    required this.shortcutIds,
  });

  /// [shortcutIds] The new order of quick reply shortcuts
  final List<int> shortcutIds;

  static const String constructor = 'reorderQuickReplyShortcuts';

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
