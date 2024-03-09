import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Checks validness of a name for a quick reply shortcut. Can be called
/// synchronously
/// Returns [Ok]
@immutable
class CheckQuickReplyShortcutName extends TdFunction {
  const CheckQuickReplyShortcutName({
    required this.name,
  });

  /// [name] The name of the shortcut; 1-32 characters
  final String name;

  static const String constructor = 'checkQuickReplyShortcutName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
