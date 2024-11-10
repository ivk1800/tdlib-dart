import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns available options for Telegram Stars gifting
/// Returns [StarPaymentOptions]
@immutable
class GetStarGiftPaymentOptions extends TdFunction {
  const GetStarGiftPaymentOptions({
    required this.userId,
  });

  /// [userId] Identifier of the user that will receive Telegram Stars; pass 0
  /// to get options for an unspecified user
  final int userId;

  static const String constructor = 'getStarGiftPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
