import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat needs to be chosen by the user among chats of the specified types
@immutable
class TargetChatChosen extends TargetChat {
  const TargetChatChosen({required this.types});

  /// [types] Allowed types for the chat
  final TargetChatTypes types;

  static const String constructor = 'targetChatChosen';

  static TargetChatChosen? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TargetChatChosen(
      types: TargetChatTypes.fromJson(json['types'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'types': types.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
