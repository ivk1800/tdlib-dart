import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a venue
class Venue extends TdObject {
  Venue(
      {required this.location,
      required this.title,
      required this.address,
      required this.provider,
      required this.id,
      required this.type});

  /// [location] Venue location; as defined by the sender
  final Location location;

  /// [title] Venue name; as defined by the sender
  final String title;

  /// [address] Venue address; as defined by the sender
  final String address;

  /// [provider] Provider of the venue database; as defined by the sender.
  /// Currently, only "foursquare" and "gplaces" (Google Places) need to be
  /// supported
  final String provider;

  /// [id] Identifier of the venue in the provider database; as defined by the
  /// sender
  final String id;

  /// [type] Type of the venue in the provider database; as defined by the
  /// sender
  final String type;

  static const String CONSTRUCTOR = 'venue';

  static Venue? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Venue(
        location: Location.fromJson(json['location'])!,
        title: json['title'],
        address: json['address'],
        provider: json['provider'],
        id: json['id'],
        type: json['type']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'location': this.location.toJson(),
        'title': this.title,
        'address': this.address,
        'provider': this.provider,
        'id': this.id,
        'type': this.type,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
