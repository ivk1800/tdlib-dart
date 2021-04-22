import '../tdapi.dart';

/// Returns an HTTP URL which can be used to automatically authorize the
/// current user on a website after clicking an HTTP link. Use the method
/// getExternalLinkInfo to find whether a prior user confirmation is needed
/// Returns [HttpUrl]
class GetExternalLink extends TdFunction {
  GetExternalLink({required this.link, required this.allowWriteAccess});

  /// [link] The HTTP link
  final String link;

  /// [allowWriteAccess] True, if the current user allowed the bot, returned in
  /// getExternalLinkInfo, to send them messages
  final bool allowWriteAccess;

  static const String CONSTRUCTOR = 'getExternalLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'link': this.link,
        'allow_write_access': this.allowWriteAccess,
        '@type': CONSTRUCTOR
      };
}
