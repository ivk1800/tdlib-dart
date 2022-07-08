import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat needs to be open with the provided internal link
@immutable
class TargetChatInternalLink extends TargetChat {
  const TargetChatInternalLink({
    required this.link,
  });

  /// [link] An internal link pointing to the chat
  final InternalLinkType link;

  static const String constructor = 'targetChatInternalLink';

  static TargetChatInternalLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TargetChatInternalLink(
      link: InternalLinkType.fromJson(json['link'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
