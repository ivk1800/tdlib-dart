import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Validates the order information provided by a user and returns the
/// available shipping options for a flexible invoice
/// Returns [ValidatedOrderInfo]
class ValidateOrderInfo extends TdFunction {
  ValidateOrderInfo(
      {required this.chatId,
      required this.messageId,
      this.orderInfo,
      required this.allowSave});

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [orderInfo] The order information, provided by the user; pass null if
  /// empty
  final OrderInfo? orderInfo;

  /// [allowSave] True, if the order information can be saved
  final bool allowSave;

  static const String CONSTRUCTOR = 'validateOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'order_info': this.orderInfo?.toJson(),
        'allow_save': this.allowSave,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
