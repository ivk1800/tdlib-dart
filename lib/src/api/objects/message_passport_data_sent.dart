import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Telegram Passport data has been sent to a bot
@immutable
class MessagePassportDataSent extends MessageContent {
  const MessagePassportDataSent({
    required this.types,
  });

  /// [types] List of Telegram Passport element types sent
  final List<PassportElementType> types;

  static const String constructor = 'messagePassportDataSent';

  static MessagePassportDataSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePassportDataSent(
      types: List<PassportElementType>.from(
          ((json['types'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => PassportElementType.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'types': types.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
