import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A graph data
@immutable
class StatisticalGraphData extends StatisticalGraph {
  const StatisticalGraphData({
    required this.jsonData,
    required this.zoomToken,
  });

  /// [jsonData] Graph data in JSON format
  final String jsonData;

  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in
  /// graph
  final String zoomToken;

  static const String constructor = 'statisticalGraphData';

  static StatisticalGraphData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphData(
      jsonData: json['json_data'],
      zoomToken: json['zoom_token'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'json_data': jsonData,
        'zoom_token': zoomToken,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
