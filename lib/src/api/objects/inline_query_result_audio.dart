import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents an audio file
class InlineQueryResultAudio extends InlineQueryResult {
  InlineQueryResultAudio({required this.id, required this.audio});

  /// [id] Unique identifier of the query result
  final String id;

  /// [audio] Audio file
  final Audio audio;

  static const String CONSTRUCTOR = 'inlineQueryResultAudio';

  static InlineQueryResultAudio? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAudio(
        id: json['id'], audio: Audio.fromJson(json['audio'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'id': this.id, 'audio': this.audio.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
