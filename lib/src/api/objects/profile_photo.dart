import '../tdapi.dart';

/// Describes a user profile photo
class ProfilePhoto extends TdObject {
  ProfilePhoto(
      {required this.id,
      required this.small,
      required this.big,
      required this.hasAnimation});

  /// [id] Photo identifier; 0 for an empty photo. Can be used to find a photo
  /// in a list of user profile photos
  final int id;

  /// [small] A small (160x160) user profile photo. The file can be downloaded
  /// only before the photo is changed
  final File small;

  /// [big] A big (640x640) user profile photo. The file can be downloaded only
  /// before the photo is changed
  final File big;

  /// [hasAnimation] True, if the photo has animated variant
  final bool hasAnimation;

  static const String CONSTRUCTOR = 'profilePhoto';

  static ProfilePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProfilePhoto(
        id: int.tryParse(json['id']) ?? 0,
        small: File.fromJson(json['small'])!,
        big: File.fromJson(json['big'])!,
        hasAnimation: json['has_animation']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'small': this.small.toJson(),
        'big': this.big.toJson(),
        'has_animation': this.hasAnimation,
        '@type': CONSTRUCTOR
      };
}
