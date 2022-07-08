import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs server about a Telegram Premium purchase through Google Play. For
/// official applications only
/// Returns [Ok]
@immutable
class AssignGooglePlayTransaction extends TdFunction {
  const AssignGooglePlayTransaction({
    required this.purchaseToken,
  });

  /// [purchaseToken] Google Play purchase token
  final String purchaseToken;

  static const String constructor = 'assignGooglePlayTransaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'purchase_token': purchaseToken,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
