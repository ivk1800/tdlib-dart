import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank
/// card numbers, URLs, and email addresses) contained in the text. Can be
/// called synchronously
/// Returns [TextEntities]
class GetTextEntities extends TdFunction {
  GetTextEntities({required this.text});

  /// [text] The text in which to look for entites
  final String text;

  static const String CONSTRUCTOR = 'getTextEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'text': this.text, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
