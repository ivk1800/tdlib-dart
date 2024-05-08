import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of channel chats recommended to the current user
/// Returns [Chats]
@immutable
class GetRecommendedChats extends TdFunction {
  const GetRecommendedChats();

  static const String constructor = 'getRecommendedChats';

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
