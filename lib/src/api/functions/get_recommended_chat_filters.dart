import '../tdapi.dart';

/// Returns recommended chat filters for the current user
/// Returns [RecommendedChatFilters]
class GetRecommendedChatFilters extends TdFunction {
  GetRecommendedChatFilters();

  static const String CONSTRUCTOR = 'getRecommendedChatFilters';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
