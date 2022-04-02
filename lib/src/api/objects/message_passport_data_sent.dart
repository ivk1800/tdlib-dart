import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Telegram Passport data has been sent
class MessagePassportDataSent extends MessageContent {
  MessagePassportDataSent({required this.types});

  /// [types] List of Telegram Passport element types sent
  final List<PassportElementType> types;

  static const String CONSTRUCTOR = 'messagePassportDataSent';

  static MessagePassportDataSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePassportDataSent(
        types: List<PassportElementType>.from((json['types'] ?? [])
            .map((item) => PassportElementType.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'types': types.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
