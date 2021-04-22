import '../tdapi.dart';

/// The parameters of animation search through
/// GetOption("animation_search_bot_username") bot has changed
class UpdateAnimationSearchParameters extends Update {
  UpdateAnimationSearchParameters(
      {required this.provider, required this.emojis});

  /// [provider] Name of the animation search provider
  final String provider;

  /// [emojis] The new list of emojis suggested for searching
  final List<String> emojis;

  static const String CONSTRUCTOR = 'updateAnimationSearchParameters';

  static UpdateAnimationSearchParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAnimationSearchParameters(
        provider: json['provider'],
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'provider': this.provider,
        'emojis': emojis.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
