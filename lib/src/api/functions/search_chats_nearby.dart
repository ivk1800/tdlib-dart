import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of users and location-based supergroups nearby. The list of
/// users nearby will be updated for 60 seconds after the request by the
/// updates updateUsersNearby. The request must be sent again every 25 seconds
/// with adjusted location to not miss new chats
/// Returns [ChatsNearby]
@immutable
class SearchChatsNearby extends TdFunction {
  const SearchChatsNearby({
    required this.location,
  });

  /// [location] Current user location
  final Location location;

  static const String constructor = 'searchChatsNearby';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'location': location.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
