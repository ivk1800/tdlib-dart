import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes a profile photo
/// Returns [Ok]
@immutable
class DeleteProfilePhoto extends TdFunction {
  const DeleteProfilePhoto({
    required this.profilePhotoId,
  });

  /// [profilePhotoId] Identifier of the profile photo to delete
  final int profilePhotoId;

  static const String constructor = 'deleteProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'profile_photo_id': profilePhotoId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
