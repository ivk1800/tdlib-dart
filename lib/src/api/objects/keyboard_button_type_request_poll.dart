import '../tdapi.dart';

/// A button that allows the user to create and send a poll when pressed;
/// available only in private chats
class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  KeyboardButtonTypeRequestPoll(
      {required this.forceRegular, required this.forceQuiz});

  /// [forceRegular] If true, only regular polls must be allowed to create
  final bool forceRegular;

  /// [forceQuiz] If true, only polls in quiz mode must be allowed to create
  final bool forceQuiz;

  static const String CONSTRUCTOR = 'keyboardButtonTypeRequestPoll';

  static KeyboardButtonTypeRequestPoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KeyboardButtonTypeRequestPoll(
        forceRegular: json['force_regular'], forceQuiz: json['force_quiz']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'force_regular': this.forceRegular,
        'force_quiz': this.forceQuiz,
        '@type': CONSTRUCTOR
      };
}
