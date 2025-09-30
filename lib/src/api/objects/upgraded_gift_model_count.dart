import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a model of an upgraded gift with the number of gifts found
@immutable
class UpgradedGiftModelCount extends TdObject {
  const UpgradedGiftModelCount({required this.model, required this.totalCount});

  /// [model] The model
  final UpgradedGiftModel model;

  /// [totalCount] Total number of gifts with the model
  final int totalCount;

  static const String constructor = 'upgradedGiftModelCount';

  static UpgradedGiftModelCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftModelCount(
      model: UpgradedGiftModel.fromJson(
        json['model'] as Map<String, dynamic>?,
      )!,
      totalCount: json['total_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'model': model.toJson(),
    'total_count': totalCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
