import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Creates a business chat link for the current account. Requires Telegram
/// Business subscription. There can be up to
/// getOption("business_chat_link_count_max") links created. Returns the
/// created link
/// Returns [BusinessChatLink]
@immutable
class CreateBusinessChatLink extends TdFunction {
  const CreateBusinessChatLink({
    required this.linkInfo,
  });

  /// [linkInfo] Information about the link to create
  final InputBusinessChatLink linkInfo;

  static const String constructor = 'createBusinessChatLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link_info': linkInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
