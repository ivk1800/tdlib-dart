import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Suggests a profile photo to another regular user with common messages
/// Returns [Ok]
@immutable
class SuggestUserProfilePhoto extends TdFunction {
  const SuggestUserProfilePhoto({
    required this.userId,
    required this.photo,
  });

  /// [userId] User identifier
  final int userId;

  /// [photo] Profile photo to suggest; inputChatPhotoPrevious isn't supported
  /// in this function
  final InputChatPhoto photo;

  static const String constructor = 'suggestUserProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'photo': photo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
