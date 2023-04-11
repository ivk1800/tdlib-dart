import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
@immutable
class InternalLinkTypeUnknownDeepLink extends InternalLinkType {
  const InternalLinkTypeUnknownDeepLink({
    required this.link,
  });

  /// [link] Link to be passed to getDeepLinkInfo
  final String link;

  static const String constructor = 'internalLinkTypeUnknownDeepLink';

  static InternalLinkTypeUnknownDeepLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUnknownDeepLink(
      link: json['link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'link': link,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
