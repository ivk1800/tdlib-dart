import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The maximum number of received similar chats
@immutable
class PremiumLimitTypeSimilarChatCount extends PremiumLimitType {
  const PremiumLimitTypeSimilarChatCount();

  static const String constructor = 'premiumLimitTypeSimilarChatCount';

  static PremiumLimitTypeSimilarChatCount? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PremiumLimitTypeSimilarChatCount();
  }

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
