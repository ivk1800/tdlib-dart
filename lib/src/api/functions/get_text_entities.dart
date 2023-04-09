import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank
/// card numbers, URLs, and email addresses) found in the text. Can be called
/// synchronously
/// Returns [TextEntities]
@immutable
class GetTextEntities extends TdFunction {
  const GetTextEntities({
    required this.text,
  });

  /// [text] The text in which to look for entities
  final String text;

  static const String constructor = 'getTextEntities';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
