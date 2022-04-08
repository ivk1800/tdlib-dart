import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A map
@immutable
class PageBlockMap extends PageBlock {
  const PageBlockMap({
    required this.location,
    required this.zoom,
    required this.width,
    required this.height,
    required this.caption,
  });

  /// [location] Location of the map center
  final Location location;

  /// [zoom] Map zoom level
  final int zoom;

  /// [width] Map width
  final int width;

  /// [height] Map height
  final int height;

  /// [caption] Block caption
  final PageBlockCaption caption;

  static const String constructor = 'pageBlockMap';

  static PageBlockMap? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockMap(
      location: Location.fromJson(json['location'])!,
      zoom: json['zoom'],
      width: json['width'],
      height: json['height'],
      caption: PageBlockCaption.fromJson(json['caption'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'zoom': zoom,
        'width': width,
        'height': height,
        'caption': caption.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
