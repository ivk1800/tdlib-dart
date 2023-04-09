import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the button that opens a private chat with the bot and sends a
/// start message to the bot with the given parameter
@immutable
class InlineQueryResultsButtonTypeStartBot
    extends InlineQueryResultsButtonType {
  const InlineQueryResultsButtonTypeStartBot({
    required this.parameter,
  });

  /// [parameter] The parameter for the bot start message
  final String parameter;

  static const String constructor = 'inlineQueryResultsButtonTypeStartBot';

  static InlineQueryResultsButtonTypeStartBot? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultsButtonTypeStartBot(
      parameter: json['parameter'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'parameter': parameter,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
