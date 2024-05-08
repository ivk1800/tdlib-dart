import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Edits a business chat link of the current account. Requires Telegram
/// Business subscription. Returns the edited link
/// Returns [BusinessChatLink]
@immutable
class EditBusinessChatLink extends TdFunction {
  const EditBusinessChatLink({
    required this.link,
    required this.linkInfo,
  });

  /// [link] The link to edit
  final String link;

  /// [linkInfo] New description of the link
  final InputBusinessChatLink linkInfo;

  static const String constructor = 'editBusinessChatLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        'link_info': linkInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
