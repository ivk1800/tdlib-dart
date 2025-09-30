import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the total number of Telegram Stars received by the current user
/// for paid messages from the given user
/// Returns [StarCount]
@immutable
class GetPaidMessageRevenue extends TdFunction {
  const GetPaidMessageRevenue({required this.userId});

  /// [userId] Identifier of the user
  final int userId;

  static const String constructor = 'getPaidMessageRevenue';

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
