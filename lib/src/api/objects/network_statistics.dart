import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A full list of available network statistic entries
@immutable
class NetworkStatistics extends TdObject {
  const NetworkStatistics({
    required this.sinceDate,
    required this.entries,
  });

  /// [sinceDate] Point in time (Unix timestamp) from which the statistics are
  /// collected
  final int sinceDate;

  /// [entries] Network statistics entries
  final List<NetworkStatisticsEntry> entries;

  static const String constructor = 'networkStatistics';

  static NetworkStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatistics(
      sinceDate: json['since_date'],
      entries: List<NetworkStatisticsEntry>.from((json['entries'] ?? [])
          .map((item) => NetworkStatisticsEntry.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'since_date': sinceDate,
        'entries': entries.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
