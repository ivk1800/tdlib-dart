import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A graph data
class StatisticalGraphData extends StatisticalGraph {
  StatisticalGraphData({required this.jsonData, required this.zoomToken});

  /// [jsonData] Graph data in JSON format
  final String jsonData;

  /// [zoomToken] If non-empty, a token which can be used to receive a zoomed in
  /// graph
  final String zoomToken;

  static const String CONSTRUCTOR = 'statisticalGraphData';

  static StatisticalGraphData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphData(
        jsonData: json['json_data'], zoomToken: json['zoom_token']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'json_data': this.jsonData,
        'zoom_token': this.zoomToken,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
