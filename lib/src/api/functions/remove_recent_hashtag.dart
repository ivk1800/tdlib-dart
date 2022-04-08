import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a hashtag from the list of recently used hashtags
/// Returns [Ok]
@immutable
class RemoveRecentHashtag extends TdFunction {
  const RemoveRecentHashtag({
    required this.hashtag,
  });

  /// [hashtag] Hashtag to delete
  final String hashtag;

  static const String constructor = 'removeRecentHashtag';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'hashtag': hashtag,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
