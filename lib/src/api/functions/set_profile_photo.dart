import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes a profile photo for the current user
/// Returns [Ok]
@immutable
class SetProfilePhoto extends TdFunction {
  const SetProfilePhoto({
    required this.photo,
    required this.isPublic,
  });

  /// [photo] Profile photo to set
  final InputChatPhoto photo;

  /// [isPublic] Pass true to set a public photo, which will be visible even the
  /// main photo is hidden by privacy settings
  final bool isPublic;

  static const String constructor = 'setProfilePhoto';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'is_public': isPublic,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
