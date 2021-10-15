import 'package:json_annotation/json_annotation.dart';
import 'package:network_manager/models/base_response.dart';

part 'disney_error_response.g.dart';

@JsonSerializable()
class DisneyErrorResponse extends INetworkResponse {
  final String? error;

  DisneyErrorResponse({this.error});

  factory DisneyErrorResponse.fromJson(Map<String, dynamic> json) => _$DisneyErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DisneyErrorResponseToJson(this);
  @override
  DisneyErrorResponse fromJson(Map<String, dynamic> map) => _$DisneyErrorResponseFromJson(map);
}
