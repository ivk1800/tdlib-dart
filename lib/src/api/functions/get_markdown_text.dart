import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Replaces text entities with Markdown formatting in a human-friendly
/// format. Entities that can't be represented in Markdown unambiguously are
/// kept as is. Can be called synchronously
/// Returns [FormattedText]
@immutable
class GetMarkdownText extends TdFunction {
  const GetMarkdownText({
    required this.text,
  });

  /// [text] The text
  final FormattedText text;

  static const String constructor = 'getMarkdownText';

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
