import '../tdapi.dart';

/// Returns full information about a basic group by its identifier
/// Returns [BasicGroupFullInfo]
class GetBasicGroupFullInfo extends TdFunction {
  GetBasicGroupFullInfo({required this.basicGroupId});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  static const String CONSTRUCTOR = 'getBasicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'basic_group_id': this.basicGroupId, '@type': CONSTRUCTOR};
}
