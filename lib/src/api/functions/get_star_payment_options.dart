import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns available options for Telegram Stars purchase
/// Returns [StarPaymentOptions]
@immutable
class GetStarPaymentOptions extends TdFunction {
  const GetStarPaymentOptions();

  static const String constructor = 'getStarPaymentOptions';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
