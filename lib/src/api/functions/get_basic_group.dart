import '../tdapi.dart';

/// Returns information about a basic group by its identifier. This is an
/// offline request if the current user is not a bot
/// Returns [BasicGroup]
class GetBasicGroup extends TdFunction {
  GetBasicGroup({required this.basicGroupId});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  static const String CONSTRUCTOR = 'getBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'basic_group_id': this.basicGroupId, '@type': CONSTRUCTOR};
}
