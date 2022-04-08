import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an invoice payment form. This method must be called when the user
/// presses inlineKeyboardButtonBuy
/// Returns [PaymentForm]
@immutable
class GetPaymentForm extends TdFunction {
  const GetPaymentForm({
    required this.chatId,
    required this.messageId,
    this.theme,
  });

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [theme] Preferred payment form theme; pass null to use the default theme
  final PaymentFormTheme? theme;

  static const String constructor = 'getPaymentForm';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'theme': theme?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
