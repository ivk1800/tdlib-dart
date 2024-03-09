import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns information about an emoji reaction. Returns a 404 error if the
/// reaction is not found
/// Returns [EmojiReaction]
@immutable
class GetEmojiReaction extends TdFunction {
  const GetEmojiReaction({
    required this.emoji,
  });

  /// [emoji] Text representation of the reaction
  final String emoji;

  static const String constructor = 'getEmojiReaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'emoji': emoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
