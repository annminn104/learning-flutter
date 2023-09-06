import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import '../../../shared/types/type.d.dart';

part 'campus_spot_model.codegen.freezed.dart';
part 'campus_spot_model.codegen.g.dart';

@freezed
class CampusSpotModel with _$CampusSpotModel {
  const factory CampusSpotModel({
    required int campusSpotId,
    required String campusSpot,
    required int campusId,
  }) = _CampusSpotModel;

  factory CampusSpotModel.fromJson(JSON json) =>
      _$CampusSpotModelFromJson(json);
}
