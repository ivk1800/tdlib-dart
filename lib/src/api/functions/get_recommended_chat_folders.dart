import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns recommended chat folders for the current user
/// Returns [RecommendedChatFolders]
@immutable
class GetRecommendedChatFolders extends TdFunction {
  const GetRecommendedChatFolders();

  static const String constructor = 'getRecommendedChatFolders';

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
