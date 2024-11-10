import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Loads quick reply shortcuts created by the current user. The loaded data
/// will be sent through updateQuickReplyShortcut and
/// updateQuickReplyShortcuts
/// Returns [Ok]
@immutable
class LoadQuickReplyShortcuts extends TdFunction {
  const LoadQuickReplyShortcuts();

  static const String constructor = 'loadQuickReplyShortcuts';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
