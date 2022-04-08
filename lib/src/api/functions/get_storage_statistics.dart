import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns storage usage statistics. Can be called before authorization
/// Returns [StorageStatistics]
@immutable
class GetStorageStatistics extends TdFunction {
  const GetStorageStatistics({
    required this.chatLimit,
  });

  /// [chatLimit] The maximum number of chats with the largest storage usage for
  /// which separate statistics need to be returned. All other chats will be
  /// grouped in entries with chat_id == 0. If the chat info database is not
  /// used, the chat_limit is ignored and is always set to 0
  final int chatLimit;

  static const String constructor = 'getStorageStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_limit': chatLimit,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
