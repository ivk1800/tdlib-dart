import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents an animation file
class InlineQueryResultAnimation extends InlineQueryResult {
  InlineQueryResultAnimation(
      {required this.id, required this.animation, required this.title});

  /// [id] Unique identifier of the query result
  final String id;

  /// [animation] Animation file
  final Animation animation;

  /// [title] Animation title
  final String title;

  static const String CONSTRUCTOR = 'inlineQueryResultAnimation';

  static InlineQueryResultAnimation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResultAnimation(
        id: json['id'],
        animation: Animation.fromJson(json['animation'])!,
        title: json['title']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'animation': this.animation.toJson(),
        'title': this.title,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
