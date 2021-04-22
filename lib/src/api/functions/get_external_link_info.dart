import '../tdapi.dart';

/// Returns information about an action to be done when the current user
/// clicks an HTTP link. This method can be used to automatically authorize
/// the current user on a website. Don't use this method for links from secret
/// chats if link preview is disabled in secret chats
/// Returns [LoginUrlInfo]
class GetExternalLinkInfo extends TdFunction {
  GetExternalLinkInfo({required this.link});

  /// [link] The HTTP link
  final String link;

  static const String CONSTRUCTOR = 'getExternalLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'link': this.link, '@type': CONSTRUCTOR};
}
