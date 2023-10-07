import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat can't be boosted
@immutable
class CanBoostChatResultInvalidChat extends CanBoostChatResult {
  const CanBoostChatResultInvalidChat();

  static const String constructor = 'canBoostChatResultInvalidChat';

  static CanBoostChatResultInvalidChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CanBoostChatResultInvalidChat();
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
