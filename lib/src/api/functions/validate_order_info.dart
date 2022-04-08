import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Validates the order information provided by a user and returns the
/// available shipping options for a flexible invoice
/// Returns [ValidatedOrderInfo]
@immutable
class ValidateOrderInfo extends TdFunction {
  const ValidateOrderInfo({
    required this.chatId,
    required this.messageId,
    this.orderInfo,
    required this.allowSave,
  });

  /// [chatId] Chat identifier of the Invoice message
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [orderInfo] The order information, provided by the user; pass null if
  /// empty
  final OrderInfo? orderInfo;

  /// [allowSave] True, if the order information can be saved
  final bool allowSave;

  static const String constructor = 'validateOrderInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'order_info': orderInfo?.toJson(),
        'allow_save': allowSave,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
