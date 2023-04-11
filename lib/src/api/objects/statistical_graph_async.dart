import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The graph data to be asynchronously loaded through getStatisticalGraph
@immutable
class StatisticalGraphAsync extends StatisticalGraph {
  const StatisticalGraphAsync({
    required this.token,
  });

  /// [token] The token to use for data loading
  final String token;

  static const String constructor = 'statisticalGraphAsync';

  static StatisticalGraphAsync? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphAsync(
      token: json['token'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'token': token,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
