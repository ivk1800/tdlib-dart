import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a location to which a chat is connected
class ChatLocation extends TdObject {
  ChatLocation({required this.location, required this.address});

  /// [location] The location
  final Location location;

  /// [address] Location address; 1-64 characters, as defined by the chat owner
  final String address;

  static const String CONSTRUCTOR = 'chatLocation';

  static ChatLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatLocation(
        location: Location.fromJson(json['location'])!,
        address: json['address']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'location': this.location.toJson(),
        'address': this.address,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
