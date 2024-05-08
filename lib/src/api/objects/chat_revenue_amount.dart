import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about revenue earned from sponsored messages in a
/// chat
@immutable
class ChatRevenueAmount extends TdObject {
  const ChatRevenueAmount({
    required this.cryptocurrency,
    required this.totalAmount,
    required this.balanceAmount,
    required this.availableAmount,
  });

  /// [cryptocurrency] Cryptocurrency in which revenue is calculated
  final String cryptocurrency;

  /// [totalAmount] Total amount of the cryptocurrency earned, in the smallest
  /// units of the cryptocurrency
  final int totalAmount;

  /// [balanceAmount] Amount of the cryptocurrency that isn't withdrawn yet, in
  /// the smallest units of the cryptocurrency
  final int balanceAmount;

  /// [availableAmount] Amount of the cryptocurrency available for withdrawal,
  /// in the smallest units of the cryptocurrency
  final int availableAmount;

  static const String constructor = 'chatRevenueAmount';

  static ChatRevenueAmount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueAmount(
      cryptocurrency: json['cryptocurrency'] as String,
      totalAmount: int.tryParse(json['total_amount']) ?? 0,
      balanceAmount: int.tryParse(json['balance_amount']) ?? 0,
      availableAmount: int.tryParse(json['available_amount']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'cryptocurrency': cryptocurrency,
        'total_amount': totalAmount.toString(),
        'balance_amount': balanceAmount.toString(),
        'available_amount': availableAmount.toString(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
