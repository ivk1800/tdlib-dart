import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a link preview by the text of a message. Do not call this function
/// too often. Returns a 404 error if the text has no link preview
/// Returns [WebPage]
@immutable
class GetWebPagePreview extends TdFunction {
  const GetWebPagePreview({
    required this.text,
    this.linkPreviewOptions,
  });

  /// [text] Message text with formatting
  final FormattedText text;

  /// [linkPreviewOptions] Options to be used for generation of the link
  /// preview; pass null to use default link preview options
  final LinkPreviewOptions? linkPreviewOptions;

  static const String constructor = 'getWebPagePreview';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text.toJson(),
        'link_preview_options': linkPreviewOptions?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
