import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets default administrator rights for adding the bot to channel chats; for
/// bots only
/// Returns [Ok]
@immutable
class SetDefaultChannelAdministratorRights extends TdFunction {
  const SetDefaultChannelAdministratorRights({
    this.defaultChannelAdministratorRights,
  });

  /// [defaultChannelAdministratorRights] Default administrator rights for
  /// adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;

  static const String constructor = 'setDefaultChannelAdministratorRights';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'default_channel_administrator_rights':
            defaultChannelAdministratorRights?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
