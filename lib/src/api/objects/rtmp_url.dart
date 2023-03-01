import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents an RTMP URL
@immutable
class RtmpUrl extends TdObject {
  const RtmpUrl({
    required this.url,
    required this.streamKey,
  });

  /// [url] The URL
  final String url;

  /// [streamKey] Stream key
  final String streamKey;

  static const String constructor = 'rtmpUrl';

  static RtmpUrl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RtmpUrl(
      url: json['url'],
      streamKey: json['stream_key'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'stream_key': streamKey,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
