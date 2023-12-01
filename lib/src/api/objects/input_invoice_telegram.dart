import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An invoice for a payment toward Telegram; must not be used in the in-store
/// apps
@immutable
class InputInvoiceTelegram extends InputInvoice {
  const InputInvoiceTelegram({
    required this.purpose,
  });

  /// [purpose] Transaction purpose
  final TelegramPaymentPurpose purpose;

  static const String constructor = 'inputInvoiceTelegram';

  static InputInvoiceTelegram? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInvoiceTelegram(
      purpose: TelegramPaymentPurpose.fromJson(
          json['purpose'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'purpose': purpose.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
