import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns up to 8 emoji statuses, which must be shown right after the
/// default Premium Badge in the emoji status list for self status
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
