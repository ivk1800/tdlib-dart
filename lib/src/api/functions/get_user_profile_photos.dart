import '../tdapi.dart';

/// Returns the profile photos of a user. The result of this query may be
/// outdated: some photos might have been deleted already
/// Returns [ChatPhotos]
class GetUserProfilePhotos extends TdFunction {
  GetUserProfilePhotos(
      {required this.userId, required this.offset, required this.limit});

  /// [userId] User identifier
  final int userId;

  /// [offset] The number of photos to skip; must be non-negative
  final int offset;

  /// [limit] The maximum number of photos to be returned; up to 100
  final int limit;

  static const String CONSTRUCTOR = 'getUserProfilePhotos';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'offset': this.offset,
        'limit': this.limit,
        '@type': CONSTRUCTOR
      };
}
