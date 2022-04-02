import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Adds the specified data to data usage statistics. Can be called before
/// authorization
/// Returns [Ok]
class AddNetworkStatistics extends TdFunction {
  AddNetworkStatistics({required this.entry});

  /// [entry] The network statistics entry with the data to be added to
  /// statistics
  final NetworkStatisticsEntry entry;

  static const String CONSTRUCTOR = 'addNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'entry': this.entry.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
