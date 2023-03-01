import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sets the current network type. Can be called before authorization. Calling
/// this method forces all network connections to reopen, mitigating the delay
/// in switching between different networks, so it must be called whenever the
/// network is changed, even if the network type remains the same. Network
/// type is used to check whether the library can use the network at all and
/// also for collecting detailed network data usage statistics
/// Returns [Ok]
@immutable
class SetNetworkType extends TdFunction {
  const SetNetworkType({
    this.type,
  });

  /// [type] The new network type; pass null to set network type to
  /// networkTypeOther
  final NetworkType? type;

  static const String constructor = 'setNetworkType';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
