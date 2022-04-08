import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a user profile photo
@immutable
class ProfilePhoto extends TdObject {
  const ProfilePhoto({
    required this.id,
    required this.small,
    required this.big,
    this.minithumbnail,
    required this.hasAnimation,
  });

  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo
  /// in a list of user profile photos
  final int id;

  /// [small] A small (160x160) user profile photo. The file can be downloaded
  /// only before the photo is changed
  final File small;

  /// [big] A big (640x640) user profile photo. The file can be downloaded only
  /// before the photo is changed
  final File big;

  /// [minithumbnail] User profile photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;

  static const String constructor = 'profilePhoto';

  static ProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfilePhoto(
      id: int.tryParse(json['id']) ?? 0,
      small: File.fromJson(json['small'])!,
      big: File.fromJson(json['big'])!,
      minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
      hasAnimation: json['has_animation'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'small': small.toJson(),
        'big': big.toJson(),
        'minithumbnail': minithumbnail?.toJson(),
        'has_animation': hasAnimation,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
