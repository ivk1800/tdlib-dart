import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Disconnects all websites from the current user's Telegram account
/// Returns [Ok]
@immutable
class DisconnectAllWebsites extends TdFunction {
  const DisconnectAllWebsites();

  static const String constructor = 'disconnectAllWebsites';

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
