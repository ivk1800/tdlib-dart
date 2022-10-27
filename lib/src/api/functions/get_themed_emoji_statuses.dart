import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns up to 8 themed emoji statuses, which color must be changed to the
/// color of the Telegram Premium badge
/// Returns [EmojiStatuses]
@immutable
class GetThemedEmojiStatuses extends TdFunction {
  const GetThemedEmojiStatuses();

  static const String constructor = 'getThemedEmojiStatuses';

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
