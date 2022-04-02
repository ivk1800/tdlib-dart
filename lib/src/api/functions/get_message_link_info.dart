import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a public or private message link. Can be called
/// for any internal link of the type internalLinkTypeMessage
/// Returns [MessageLinkInfo]
class GetMessageLinkInfo extends TdFunction {
  GetMessageLinkInfo({required this.url});

  /// [url] The message link
  final String url;

  static const String CONSTRUCTOR = 'getMessageLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'url': this.url, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
