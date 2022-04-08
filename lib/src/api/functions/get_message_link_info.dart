import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about a public or private message link. Can be called
/// for any internal link of the type internalLinkTypeMessage
/// Returns [MessageLinkInfo]
@immutable
class GetMessageLinkInfo extends TdFunction {
  const GetMessageLinkInfo({
    required this.url,
  });

  /// [url] The message link
  final String url;

  static const String constructor = 'getMessageLinkInfo';

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
