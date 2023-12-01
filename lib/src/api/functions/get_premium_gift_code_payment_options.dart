import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns available options for Telegram Premium gift code or giveaway
/// creation
/// Returns [PremiumGiftCodePaymentOptions]
@immutable
class GetPremiumGiftCodePaymentOptions extends TdFunction {
  const GetPremiumGiftCodePaymentOptions({
    required this.boostedChatId,
  });

  /// [boostedChatId] Identifier of the channel chat, which will be
  /// automatically boosted by receivers of the gift codes and which is
  /// administered by the user; 0 if none
  final int boostedChatId;

  static const String constructor = 'getPremiumGiftCodePaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'boosted_chat_id': boostedChatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
