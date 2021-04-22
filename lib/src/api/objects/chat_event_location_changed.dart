import '../tdapi.dart';

/// The supergroup location was changed
class ChatEventLocationChanged extends ChatEventAction {
  ChatEventLocationChanged({this.oldLocation, this.newLocation});

  /// [oldLocation] Previous location; may be null
  final ChatLocation? oldLocation;

  /// [newLocation] New location; may be null
  final ChatLocation? newLocation;

  static const String CONSTRUCTOR = 'chatEventLocationChanged';

  static ChatEventLocationChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventLocationChanged(
        oldLocation: ChatLocation.fromJson(json['old_location']),
        newLocation: ChatLocation.fromJson(json['new_location']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_location': this.oldLocation?.toJson(),
        'new_location': this.newLocation?.toJson(),
        '@type': CONSTRUCTOR
      };
}
