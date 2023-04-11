import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a location to which a chat is connected
@immutable
class ChatLocation extends TdObject {
  const ChatLocation({
    required this.location,
    required this.address,
  });

  /// [location] The location
  final Location location;

  /// [address] Location address; 1-64 characters, as defined by the chat owner
  final String address;

  static const String constructor = 'chatLocation';

  static ChatLocation? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatLocation(
      location: Location.fromJson(json['location'] as Map<String, dynamic>?)!,
      address: json['address'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        'address': address,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
