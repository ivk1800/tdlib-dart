import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns recent emoji statuses
/// Returns [EmojiStatuses]
@immutable
class GetRecentEmojiStatuses extends TdFunction {
  const GetRecentEmojiStatuses();

  static const String constructor = 'getRecentEmojiStatuses';

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
