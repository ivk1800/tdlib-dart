import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns all website where the current user used Telegram to log in
/// Returns [ConnectedWebsites]
@immutable
class GetConnectedWebsites extends TdFunction {
  const GetConnectedWebsites();

  static const String constructor = 'getConnectedWebsites';

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
