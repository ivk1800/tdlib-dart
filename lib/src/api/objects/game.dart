import '../tdapi.dart';

/// Describes a game
class Game extends TdObject {
  Game(
      {required this.id,
      required this.shortName,
      required this.title,
      required this.text,
      required this.description,
      required this.photo,
      this.animation});

  /// [id] Game ID
  final int id;

  /// [shortName] Game short name. To share a game use the URL
  /// https://t.me/{bot_username}?game={game_short_name}
  final String shortName;

  /// [title] Game title
  final String title;

  /// [text] Game text, usually containing scoreboards for a game
  final FormattedText text;

  /// param_[description] Game description
  final String description;

  /// [photo] Game photo
  final Photo photo;

  /// [animation] Game animation; may be null
  final Animation? animation;

  static const String CONSTRUCTOR = 'game';

  static Game? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Game(
        id: int.tryParse(json['id']) ?? 0,
        shortName: json['short_name'],
        title: json['title'],
        text: FormattedText.fromJson(json['text'])!,
        description: json['description'],
        photo: Photo.fromJson(json['photo'])!,
        animation: Animation.fromJson(json['animation']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'short_name': this.shortName,
        'title': this.title,
        'text': this.text.toJson(),
        'description': this.description,
        'photo': this.photo.toJson(),
        'animation': this.animation?.toJson(),
        '@type': CONSTRUCTOR
      };
}
