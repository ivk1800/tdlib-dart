import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the most grossing Web App bots
/// Returns [FoundUsers]
@immutable
class GetGrossingWebAppBots extends TdFunction {
  const GetGrossingWebAppBots({
    required this.offset,
    required this.limit,
  });

  /// [offset] Offset of the first entry to return as received from the previous
  /// request; use empty string to get the first chunk of results
  final String offset;

  /// [limit] The maximum number of bots to be returned; up to 100
  final int limit;

  static const String constructor = 'getGrossingWebAppBots';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'offset': offset,
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
