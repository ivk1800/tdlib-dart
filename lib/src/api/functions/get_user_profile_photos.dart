import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the profile photos of a user. The result of this query may be
/// outdated: some photos might have been deleted already
/// Returns [ChatPhotos]
@immutable
class GetUserProfilePhotos extends TdFunction {
  const GetUserProfilePhotos({
    required this.userId,
    required this.offset,
    required this.limit,
  });

  /// [userId] User identifier
  final int userId;

  /// [offset] The number of photos to skip; must be non-negative
  final int offset;

  /// [limit] The maximum number of photos to be returned; up to 100
  final int limit;

  static const String constructor = 'getUserProfilePhotos';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
