import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an animation file
@immutable
class InlineQueryResultAnimation extends InlineQueryResult {
  const InlineQueryResultAnimation({
    required this.id,
    required this.animation,
    required this.title,
  });

  /// [id] Unique identifier of the query result
  final String id;

  /// [animation] Animation file
  final Animation animation;

  /// [title] Animation title
  final String title;

  static const String constructor = 'inlineQueryResultAnimation';

  static InlineQueryResultAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAnimation(
      id: json['id'],
      animation: Animation.fromJson(json['animation'])!,
      title: json['title'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'animation': animation.toJson(),
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
