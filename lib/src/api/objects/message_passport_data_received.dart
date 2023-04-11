import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Telegram Passport data has been received; for bots only
@immutable
class MessagePassportDataReceived extends MessageContent {
  const MessagePassportDataReceived({
    required this.elements,
    required this.credentials,
  });

  /// [elements] List of received Telegram Passport elements
  final List<EncryptedPassportElement> elements;

  /// [credentials] Encrypted data credentials
  final EncryptedCredentials credentials;

  static const String constructor = 'messagePassportDataReceived';

  static MessagePassportDataReceived? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePassportDataReceived(
      elements: List<EncryptedPassportElement>.from(
          ((json['elements'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => EncryptedPassportElement.fromJson(item))
              .toList()),
      credentials: EncryptedCredentials.fromJson(
          json['credentials'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'elements': elements.map((item) => item.toJson()).toList(),
        'credentials': credentials.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
