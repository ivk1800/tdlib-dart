import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a type of button in results of inline query
@immutable
abstract class InlineQueryResultsButtonType extends TdObject {
  const InlineQueryResultsButtonType();

  static const String constructor = 'inlineQueryResultsButtonType';

  /// Inherited by:
  /// [InlineQueryResultsButtonTypeStartBot]
  /// [InlineQueryResultsButtonTypeWebApp]
  static InlineQueryResultsButtonType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InlineQueryResultsButtonTypeStartBot.constructor:
        return InlineQueryResultsButtonTypeStartBot.fromJson(json);
      case InlineQueryResultsButtonTypeWebApp.constructor:
        return InlineQueryResultsButtonTypeWebApp.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
