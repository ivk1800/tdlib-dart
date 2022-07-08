import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a list of recently inactive supergroups and channels. Can be used
/// when user reaches limit on the number of joined supergroups and channels
/// and receives CHANNELS_TOO_MUCH error. Also, the limit can be increased
/// with Telegram Premium
/// Returns [Chats]
@immutable
class GetInactiveSupergroupChats extends TdFunction {
  const GetInactiveSupergroupChats();

  static const String constructor = 'getInactiveSupergroupChats';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
