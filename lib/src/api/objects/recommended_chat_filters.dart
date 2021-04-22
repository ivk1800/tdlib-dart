import '../tdapi.dart';

/// Contains a list of recommended chat filters
class RecommendedChatFilters extends TdObject {
  RecommendedChatFilters({required this.chatFilters});

  /// [chatFilters] List of recommended chat filters
  final List<RecommendedChatFilter> chatFilters;

  static const String CONSTRUCTOR = 'recommendedChatFilters';

  static RecommendedChatFilters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RecommendedChatFilters(
        chatFilters: List<RecommendedChatFilter>.from(
            (json['chat_filters'] ?? [])
                .map((item) => RecommendedChatFilter.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_filters': chatFilters.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
