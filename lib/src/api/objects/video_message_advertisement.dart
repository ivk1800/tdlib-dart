import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an advertisent to be shown while a video from a message is
/// watched
@immutable
class VideoMessageAdvertisement extends TdObject {
  const VideoMessageAdvertisement({
    required this.uniqueId,
    required this.text,
    required this.minDisplayDuration,
    required this.maxDisplayDuration,
    required this.canBeReported,
    required this.sponsor,
    required this.title,
    required this.additionalInfo,
  });

  /// [uniqueId] Unique identifier of this result
  final int uniqueId;

  /// [text] Text of the advertisement
  final String text;

  /// [minDisplayDuration] The minimum amount of time the advertisement must be
  /// displayed before it can be hidden by the user, in seconds
  final int minDisplayDuration;

  /// [maxDisplayDuration] The maximum amount of time the advertisement must be
  /// displayed before it must be automatically hidden, in seconds
  final int maxDisplayDuration;

  /// [canBeReported] True, if the advertisement can be reported to Telegram
  /// moderators through reportVideoMessageAdvertisement
  final bool canBeReported;

  /// [sponsor] Information about the sponsor of the advertisement
  final AdvertisementSponsor sponsor;

  /// [title] Title of the sponsored message
  final String title;

  /// [additionalInfo] If non-empty, additional information about the sponsored
  /// message to be shown along with the message
  final String additionalInfo;

  static const String constructor = 'videoMessageAdvertisement';

  static VideoMessageAdvertisement? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VideoMessageAdvertisement(
      uniqueId: json['unique_id'] as int,
      text: json['text'] as String,
      minDisplayDuration: json['min_display_duration'] as int,
      maxDisplayDuration: json['max_display_duration'] as int,
      canBeReported: json['can_be_reported'] as bool,
      sponsor: AdvertisementSponsor.fromJson(
        json['sponsor'] as Map<String, dynamic>?,
      )!,
      title: json['title'] as String,
      additionalInfo: json['additional_info'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'unique_id': uniqueId,
    'text': text,
    'min_display_duration': minDisplayDuration,
    'max_display_duration': maxDisplayDuration,
    'can_be_reported': canBeReported,
    'sponsor': sponsor.toJson(),
    'title': title,
    'additional_info': additionalInfo,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
