import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an audio file
@immutable
class InlineQueryResultAudio extends InlineQueryResult {
  const InlineQueryResultAudio({
    required this.id,
    required this.audio,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [audio] Audio file
  final Audio audio;

  static const String constructor = 'inlineQueryResultAudio';

  static InlineQueryResultAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAudio(
      id: json['id'],
      audio: Audio.fromJson(json['audio'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'audio': audio.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
