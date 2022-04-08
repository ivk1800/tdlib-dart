import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains database statistics
@immutable
class DatabaseStatistics extends TdObject {
  const DatabaseStatistics({
    required this.statistics,
  });

  /// [statistics] Database statistics in an unspecified human-readable format
  final String statistics;

  static const String constructor = 'databaseStatistics';

  static DatabaseStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DatabaseStatistics(
      statistics: json['statistics'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'statistics': statistics,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
