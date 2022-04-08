import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a tg:// deep link. Use
/// "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for
/// testing. Returns a 404 error for unknown links. Can be called before
/// authorization
/// Returns [DeepLinkInfo]
@immutable
class GetDeepLinkInfo extends TdFunction {
  const GetDeepLinkInfo({
    required this.link,
  });

  /// [link] The link
  final String link;

  static const String constructor = 'getDeepLinkInfo';

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
