import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a web page preview by the text of the message. Do not call this
/// function too often. Returns a 404 error if the web page has no preview
/// Returns [WebPage]
@immutable
class GetWebPagePreview extends TdFunction {
  const GetWebPagePreview({
    required this.text,
  });

  /// [text] Message text with formatting
  final FormattedText text;

  static const String constructor = 'getWebPagePreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
