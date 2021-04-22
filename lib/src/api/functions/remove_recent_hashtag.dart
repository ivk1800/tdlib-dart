import '../tdapi.dart';

/// Removes a hashtag from the list of recently used hashtags
/// Returns [Ok]
class RemoveRecentHashtag extends TdFunction {
  RemoveRecentHashtag({required this.hashtag});

  /// [hashtag] Hashtag to delete
  final String hashtag;

  static const String CONSTRUCTOR = 'removeRecentHashtag';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'hashtag': this.hashtag, '@type': CONSTRUCTOR};
}
