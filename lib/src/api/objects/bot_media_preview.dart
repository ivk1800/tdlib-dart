import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes media previews of a bot
@immutable
class BotMediaPreview extends TdObject {
  const BotMediaPreview({
    required this.date,
    required this.content,
  });

  /// [date] Point in time (Unix timestamp) when the preview was added or
  /// changed last time
  final int date;

  /// [content] Content of the preview
  final StoryContent content;

  static const String constructor = 'botMediaPreview';

  static BotMediaPreview? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BotMediaPreview(
      date: json['date'] as int,
      content: StoryContent.fromJson(json['content'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'date': date,
        'content': content.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
