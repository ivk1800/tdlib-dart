import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The graph data to be asynchronously loaded through getStatisticalGraph
class StatisticalGraphAsync extends StatisticalGraph {
  StatisticalGraphAsync({required this.token});

  /// [token] The token to use for data loading
  final String token;

  static const String CONSTRUCTOR = 'statisticalGraphAsync';

  static StatisticalGraphAsync? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphAsync(token: json['token']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'token': this.token, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
