import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns t.me URLs recently visited by a newly registered user
/// Returns [TMeUrls]
@immutable
class GetRecentlyVisitedTMeUrls extends TdFunction {
  const GetRecentlyVisitedTMeUrls({
    required this.referrer,
  });

  /// [referrer] Google Play referrer to identify the user
  final String referrer;

  static const String constructor = 'getRecentlyVisitedTMeUrls';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'referrer': referrer,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
