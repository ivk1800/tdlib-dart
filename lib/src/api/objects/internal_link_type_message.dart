import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a Telegram message or a forum topic. Call
/// getMessageLinkInfo with the given URL to process the link, and then open
/// received forum topic or chat and show the message there
@immutable
class InternalLinkTypeMessage extends InternalLinkType {
  const InternalLinkTypeMessage({
    required this.url,
  });

  /// [url] URL to be passed to getMessageLinkInfo
  final String url;

  static const String constructor = 'internalLinkTypeMessage';

  static InternalLinkTypeMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeMessage(
      url: json['url'] as String,
    );
  }

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
