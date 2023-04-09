import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a button to be shown above inline query results
@immutable
class InlineQueryResultsButton extends TdObject {
  const InlineQueryResultsButton({
    required this.text,
    required this.type,
  });

  /// [text] The text of the button
  final String text;

  /// [type] Type of the button
  final InlineQueryResultsButtonType type;

  static const String constructor = 'inlineQueryResultsButton';

  static InlineQueryResultsButton? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultsButton(
      text: json['text'],
      type: InlineQueryResultsButtonType.fromJson(json['type'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'text': text,
        'type': type.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
