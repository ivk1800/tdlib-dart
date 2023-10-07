import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a link to boost a chat. Can be called for any
/// internal link of the type internalLinkTypeChatBoost
/// Returns [ChatBoostLinkInfo]
@immutable
class GetChatBoostLinkInfo extends TdFunction {
  const GetChatBoostLinkInfo({
    required this.url,
  });

  /// [url] The link to boost a chat
  final String url;

  static const String constructor = 'getChatBoostLinkInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
