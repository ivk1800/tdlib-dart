import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns information about a file with a map thumbnail in PNG format. Only
/// map thumbnail files with size less than 1MB can be downloaded
/// Returns [File]
class GetMapThumbnailFile extends TdFunction {
  GetMapThumbnailFile(
      {required this.location,
      required this.zoom,
      required this.width,
      required this.height,
      required this.scale,
      required this.chatId});

  /// [location] Location of the map center
  final Location location;

  /// [zoom] Map zoom level; 13-20
  final int zoom;

  /// [width] Map width in pixels before applying scale; 16-1024
  final int width;

  /// [height] Map height in pixels before applying scale; 16-1024
  final int height;

  /// [scale] Map scale; 1-3
  final int scale;

  /// [chatId] Identifier of a chat, in which the thumbnail will be shown. Use 0
  /// if unknown
  final int chatId;

  static const String CONSTRUCTOR = 'getMapThumbnailFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'location': this.location.toJson(),
        'zoom': this.zoom,
        'width': this.width,
        'height': this.height,
        'scale': this.scale,
        'chat_id': this.chatId,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
