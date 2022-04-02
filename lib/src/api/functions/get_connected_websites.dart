import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns all website where the current user used Telegram to log in
/// Returns [ConnectedWebsites]
class GetConnectedWebsites extends TdFunction {
  GetConnectedWebsites();

  static const String CONSTRUCTOR = 'getConnectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
