import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Clears the list of recently used emoji statuses
/// Returns [Ok]
@immutable
class ClearRecentEmojiStatuses extends TdFunction {
  const ClearRecentEmojiStatuses();

  static const String constructor = 'clearRecentEmojiStatuses';

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
