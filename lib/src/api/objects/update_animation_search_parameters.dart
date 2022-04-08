import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The parameters of animation search through
/// GetOption("animation_search_bot_username") bot has changed
@immutable
class UpdateAnimationSearchParameters extends Update {
  const UpdateAnimationSearchParameters({
    required this.provider,
    required this.emojis,
  });

  /// [provider] Name of the animation search provider
  final String provider;

  /// [emojis] The new list of emojis suggested for searching
  final List<String> emojis;

  static const String constructor = 'updateAnimationSearchParameters';

  static UpdateAnimationSearchParameters? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAnimationSearchParameters(
      provider: json['provider'],
      emojis: List<String>.from(
          (json['emojis'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'provider': provider,
        'emojis': emojis.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
