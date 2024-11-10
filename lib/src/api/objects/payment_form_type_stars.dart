import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The payment form is for a payment in Telegram Stars
@immutable
class PaymentFormTypeStars extends PaymentFormType {
  const PaymentFormTypeStars({
    required this.starCount,
  });

  /// [starCount] Number of Telegram Stars that will be paid
  final int starCount;

  static const String constructor = 'paymentFormTypeStars';

  static PaymentFormTypeStars? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentFormTypeStars(
      starCount: json['star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'star_count': starCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
