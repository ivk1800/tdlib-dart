import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an inline message that can be sent via the bot
@immutable
class PreparedInlineMessageId extends TdObject {
  const PreparedInlineMessageId({
    required this.id,
    required this.expirationDate,
  });

  /// [id] Unique identifier for the message
  final String id;

  /// [expirationDate] Point in time (Unix timestamp) when the message can't be
  /// used anymore
  final int expirationDate;

  static const String constructor = 'preparedInlineMessageId';

  static PreparedInlineMessageId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreparedInlineMessageId(
      id: json['id'] as String,
      expirationDate: json['expiration_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'expiration_date': expirationDate,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
