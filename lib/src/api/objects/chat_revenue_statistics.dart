import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A detailed statistics about revenue earned from sponsored messages in a
/// chat
@immutable
class ChatRevenueStatistics extends TdObject {
  const ChatRevenueStatistics({
    required this.revenueByHourGraph,
    required this.revenueGraph,
    required this.revenueAmount,
    required this.usdRate,
  });

  /// [revenueByHourGraph] A graph containing amount of revenue in a given hour
  final StatisticalGraph revenueByHourGraph;

  /// [revenueGraph] A graph containing amount of revenue
  final StatisticalGraph revenueGraph;

  /// [revenueAmount] Amount of earned revenue
  final ChatRevenueAmount revenueAmount;

  /// [usdRate] Current conversion rate of the cryptocurrency in which revenue
  /// is calculated to USD
  final double usdRate;

  static const String constructor = 'chatRevenueStatistics';

  static ChatRevenueStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatRevenueStatistics(
      revenueByHourGraph: StatisticalGraph.fromJson(
          json['revenue_by_hour_graph'] as Map<String, dynamic>?)!,
      revenueGraph: StatisticalGraph.fromJson(
          json['revenue_graph'] as Map<String, dynamic>?)!,
      revenueAmount: ChatRevenueAmount.fromJson(
          json['revenue_amount'] as Map<String, dynamic>?)!,
      usdRate: (json['usd_rate'] as num).toDouble(),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'revenue_by_hour_graph': revenueByHourGraph.toJson(),
        'revenue_graph': revenueGraph.toJson(),
        'revenue_amount': revenueAmount.toJson(),
        'usd_rate': usdRate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
