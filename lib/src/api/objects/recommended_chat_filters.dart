import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains a list of recommended chat filters
@immutable
class RecommendedChatFilters extends TdObject {
  const RecommendedChatFilters({
    required this.chatFilters,
  });

  /// [chatFilters] List of recommended chat filters
  final List<RecommendedChatFilter> chatFilters;

  static const String constructor = 'recommendedChatFilters';

  static RecommendedChatFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFilters(
      chatFilters: List<RecommendedChatFilter>.from(
          ((json['chat_filters'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => RecommendedChatFilter.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_filters': chatFilters.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
