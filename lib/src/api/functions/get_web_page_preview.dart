import '../tdapi.dart';

/// Returns a web page preview by the text of the message. Do not call this
/// function too often. Returns a 404 error if the web page has no preview
/// Returns [WebPage]
class GetWebPagePreview extends TdFunction {
  GetWebPagePreview({required this.text});

  /// [text] Message text with formatting
  final FormattedText text;

  static const String CONSTRUCTOR = 'getWebPagePreview';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};
}
