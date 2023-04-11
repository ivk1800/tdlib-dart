import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a recommended chat filter
@immutable
class RecommendedChatFilter extends TdObject {
  const RecommendedChatFilter({
    required this.filter,
    required this.description,
  });

  /// [filter] The chat filter
  final ChatFilter filter;

  /// param_[description] Chat filter description
  final String description;

  static const String constructor = 'recommendedChatFilter';

  static RecommendedChatFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFilter(
      filter: ChatFilter.fromJson(json['filter'] as Map<String, dynamic>?)!,
      description: json['description'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'filter': filter.toJson(),
        'description': description,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
