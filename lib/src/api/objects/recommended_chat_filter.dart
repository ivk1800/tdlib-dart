import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a recommended chat filter
class RecommendedChatFilter extends TdObject {
  RecommendedChatFilter({required this.filter, required this.description});

  /// [filter] The chat filter
  final ChatFilter filter;

  /// param_[description] Chat filter description
  final String description;

  static const String CONSTRUCTOR = 'recommendedChatFilter';

  static RecommendedChatFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFilter(
        filter: ChatFilter.fromJson(json['filter'])!,
        description: json['description']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'filter': this.filter.toJson(),
        'description': this.description,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
