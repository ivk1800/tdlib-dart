import '../tdapi.dart';

/// Returns a list of users and location-based supergroups nearby. The list of
/// users nearby will be updated for 60 seconds after the request by the
/// updates updateUsersNearby. The request should be sent again every 25
/// seconds with adjusted location to not miss new chats
/// Returns [ChatsNearby]
class SearchChatsNearby extends TdFunction {
  SearchChatsNearby({required this.location});

  /// [location] Current user location
  final Location location;

  static const String CONSTRUCTOR = 'searchChatsNearby';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'location': this.location.toJson(), '@type': CONSTRUCTOR};
}
