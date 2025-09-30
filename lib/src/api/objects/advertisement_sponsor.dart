import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about the sponsor of an advertisement
@immutable
class AdvertisementSponsor extends TdObject {
  const AdvertisementSponsor({required this.url, this.photo, this.info});

  /// [url] URL of the sponsor to be opened when the advertisement is clicked
  final String url;

  /// [photo] Photo of the sponsor; may be null if must not be shown
  final Photo? photo;

  /// [info] Additional optional information about the sponsor to be shown along
  /// with the advertisement
  final String? info;

  static const String constructor = 'advertisementSponsor';

  static AdvertisementSponsor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AdvertisementSponsor(
      url: json['url'] as String,
      photo: Photo.fromJson(json['photo'] as Map<String, dynamic>?),
      info: json['info'] as String?,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'url': url,
    'photo': photo?.toJson(),
    'info': info,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
