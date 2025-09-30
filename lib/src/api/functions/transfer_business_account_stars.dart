import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Transfer Telegram Stars from the business account to the business bot; for
/// bots only
/// Returns [Ok]
@immutable
class TransferBusinessAccountStars extends TdFunction {
  const TransferBusinessAccountStars({
    required this.businessConnectionId,
    required this.starCount,
  });

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  /// [starCount] Number of Telegram Stars to transfer
  final int starCount;

  static const String constructor = 'transferBusinessAccountStars';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    'star_count': starCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
