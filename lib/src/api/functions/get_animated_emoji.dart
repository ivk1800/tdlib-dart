import '../tdapi.dart';

/// Returns an animated emoji corresponding to a given emoji. Returns a 404
/// error if the emoji has no animated emoji
/// Returns [AnimatedEmoji]
class GetAnimatedEmoji extends TdFunction {
  GetAnimatedEmoji({required this.emoji});

  /// [emoji] The emoji
  final String emoji;

  static const String CONSTRUCTOR = 'getAnimatedEmoji';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'emoji': this.emoji, '@type': CONSTRUCTOR};
}
