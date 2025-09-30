import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the amount of Telegram Stars owned by a business account; for bots
/// only
/// Returns [StarAmount]
@immutable
class GetBusinessAccountStarAmount extends TdFunction {
  const GetBusinessAccountStarAmount({required this.businessConnectionId});

  /// [businessConnectionId] Unique identifier of business connection
  final String businessConnectionId;

  static const String constructor = 'getBusinessAccountStarAmount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'business_connection_id': businessConnectionId,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
