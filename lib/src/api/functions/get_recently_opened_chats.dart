import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns recently opened chats, this is an offline request. Returns chats
/// in the order of last opening
/// Returns [Chats]
@immutable
class GetRecentlyOpenedChats extends TdFunction {
  const GetRecentlyOpenedChats({
    required this.limit,
  });

  /// [limit] The maximum number of chats to be returned
  final int limit;

  static const String constructor = 'getRecentlyOpenedChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
