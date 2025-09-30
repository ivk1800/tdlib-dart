import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a checklist. Checklists can't be sent to secret chats,
/// channel chats and channel direct messages chats; for Telegram Premium
/// users only
@immutable
class InputMessageChecklist extends InputMessageContent {
  const InputMessageChecklist({required this.checklist});

  /// [checklist] The checklist to send
  final InputChecklist checklist;

  static const String constructor = 'inputMessageChecklist';

  static InputMessageChecklist? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageChecklist(
      checklist: InputChecklist.fromJson(
        json['checklist'] as Map<String, dynamic>?,
      )!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'checklist': checklist.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
