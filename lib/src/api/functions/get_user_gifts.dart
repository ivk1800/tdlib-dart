import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns gifts saved to profile by the given user
/// Returns [UserGifts]
@immutable
class GetUserGifts extends TdFunction {
  const GetUserGifts({
    required this.userId,
    required this.offset,
    required this.limit,
  });

  /// [userId] Identifier of the user
  final int userId;

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of gifts to be returned; must be positive and
  /// can't be greater than 100. For optimal performance, the number of returned
  /// objects is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  static const String constructor = 'getUserGifts';

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
