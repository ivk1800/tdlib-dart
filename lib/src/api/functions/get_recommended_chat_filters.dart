import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns recommended chat filters for the current user
/// Returns [RecommendedChatFilters]
@immutable
class GetRecommendedChatFilters extends TdFunction {
  const GetRecommendedChatFilters();

  static const String constructor = 'getRecommendedChatFilters';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
