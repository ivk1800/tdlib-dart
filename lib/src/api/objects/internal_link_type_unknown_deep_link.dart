import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link is an unknown tg: link. Call getDeepLinkInfo to process the link
class InternalLinkTypeUnknownDeepLink extends InternalLinkType {
  InternalLinkTypeUnknownDeepLink({required this.link});

  /// [link] Link to be passed to getDeepLinkInfo
  final String link;

  static const String CONSTRUCTOR = 'internalLinkTypeUnknownDeepLink';

  static InternalLinkTypeUnknownDeepLink? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeUnknownDeepLink(link: json['link']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'link': this.link, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
