import '../tdapi.dart';

/// An error message to be shown to the user instead of the graph
class StatisticalGraphError extends StatisticalGraph {
  StatisticalGraphError({required this.errorMessage});

  /// [errorMessage] The error message
  final String errorMessage;

  static const String CONSTRUCTOR = 'statisticalGraphError';

  static StatisticalGraphError? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphError(errorMessage: json['error_message']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'error_message': this.errorMessage, '@type': CONSTRUCTOR};
}
