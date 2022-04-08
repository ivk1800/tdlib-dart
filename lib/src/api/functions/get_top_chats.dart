import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of frequently used chats. Supported only if the chat info
/// database is enabled
/// Returns [Chats]
@immutable
class GetTopChats extends TdFunction {
  const GetTopChats({
    required this.category,
    required this.limit,
  });

  /// [category] Category of chats to be returned
  final TopChatCategory category;

  /// [limit] The maximum number of chats to be returned; up to 30
  final int limit;

  static const String constructor = 'getTopChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'category': category.toJson(),
        'limit': limit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
