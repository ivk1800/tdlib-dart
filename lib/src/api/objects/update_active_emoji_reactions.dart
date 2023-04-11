import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of active emoji reactions has changed
@immutable
class UpdateActiveEmojiReactions extends Update {
  const UpdateActiveEmojiReactions({
    required this.emojis,
  });

  /// [emojis] The new list of active emoji reactions
  final List<String> emojis;

  static const String constructor = 'updateActiveEmojiReactions';

  static UpdateActiveEmojiReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateActiveEmojiReactions(
      emojis: List<String>.from(
          ((json['emojis'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emojis': emojis.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
