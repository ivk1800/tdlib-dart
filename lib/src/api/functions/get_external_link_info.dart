import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about an action to be done when the current user
/// clicks an external link. Don't use this method for links from secret chats
/// if web page preview is disabled in secret chats
/// Returns [LoginUrlInfo]
class GetExternalLinkInfo extends TdFunction {
  GetExternalLinkInfo({required this.link});

  /// [link] The link
  final String link;

  static const String CONSTRUCTOR = 'getExternalLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'link': this.link, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
