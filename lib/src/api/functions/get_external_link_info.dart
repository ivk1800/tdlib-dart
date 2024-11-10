import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about an action to be done when the current user
/// clicks an external link. Don't use this method for links from secret chats
/// if link preview is disabled in secret chats
/// Returns [LoginUrlInfo]
@immutable
class GetExternalLinkInfo extends TdFunction {
  const GetExternalLinkInfo({
    required this.link,
  });

  /// [link] The link
  final String link;

  static const String constructor = 'getExternalLinkInfo';

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
