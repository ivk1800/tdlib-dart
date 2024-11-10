import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns detailed Telegram Star revenue statistics
/// Returns [StarRevenueStatistics]
@immutable
class GetStarRevenueStatistics extends TdFunction {
  const GetStarRevenueStatistics({
    required this.ownerId,
    required this.isDark,
  });

  /// [ownerId] Identifier of the owner of the Telegram Stars; can be identifier
  /// of an owned bot, or identifier of a channel chat with
  /// supergroupFullInfo.can_get_star_revenue_statistics == true
  final MessageSender ownerId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String constructor = 'getStarRevenueStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'owner_id': ownerId.toJson(),
        'is_dark': isDark,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
