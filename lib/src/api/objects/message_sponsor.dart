import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Information about the sponsor of a message
@immutable
class MessageSponsor extends TdObject {
  const MessageSponsor({
    required this.type,
    this.photo,
    this.info,
  });

  /// [type] Type of the sponsor
  final MessageSponsorType type;

  /// [photo] Photo of the sponsor; may be null if must not be shown
  final ChatPhotoInfo? photo;

  /// [info] Additional optional information about the sponsor to be shown along
  /// with the message
  final String? info;

  static const String constructor = 'messageSponsor';

  static MessageSponsor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSponsor(
      type: MessageSponsorType.fromJson(json['type'] as Map<String, dynamic>?)!,
      photo: ChatPhotoInfo.fromJson(json['photo'] as Map<String, dynamic>?),
      info: json['info'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'photo': photo?.toJson(),
        'info': info,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
