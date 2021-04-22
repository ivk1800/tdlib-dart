import '../tdapi.dart';

/// Returns information about a tg:// deep link. Use
/// "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for
/// testing. Returns a 404 error for unknown links. Can be called before
/// authorization
/// Returns [DeepLinkInfo]
class GetDeepLinkInfo extends TdFunction {
  GetDeepLinkInfo({required this.link});

  /// [link] The link
  final String link;

  static const String CONSTRUCTOR = 'getDeepLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'link': this.link, '@type': CONSTRUCTOR};
}
