import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of video chat streams
@immutable
class VideoChatStreams extends TdObject {
  const VideoChatStreams({required this.streams});

  /// [streams] A list of video chat streams
  final List<VideoChatStream> streams;

  static const String constructor = 'videoChatStreams';

  static VideoChatStreams? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoChatStreams(
      streams: List<VideoChatStream>.from(
        ((json['streams'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => VideoChatStream.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'streams': streams.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
