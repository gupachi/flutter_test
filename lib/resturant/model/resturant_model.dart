import 'package:actual/common/const/data.dart';
import 'package:actual/common/model/model_with_id.dart';
import 'package:actual/common/utils/data_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

enum RestaurantPriceRange {
  expensive,
  medium,
  cheap,
}

@JsonSerializable()
class RestaurantModel {
  final String id;
  final String name;
  //변경하고 싶은 정보만 url 로 요청
  @JsonKey(
    fromJson: DataUtils.pathToUrl,
  )
  final String thumbUrl;
  final List<String> tags;
  final RestaurantPriceRange priceRange;
  final double ratings;
  final int ratingsCount;
  final int deliveryTime;
  final int deliveryFee;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.thumbUrl,
    required this.tags,
    required this.priceRange,
    required this.ratings,
    required this.ratingsCount,
    required this.deliveryTime,
    required this.deliveryFee,
  });
// json 패턴 그대로 정보가 들어간다.

  factory RestaurantModel.fromJson(Map<String, dynamic> json)
  => _$RestaurantModelFromJson(json);
//json 의로 값을 반환해 쓴다.
  Map<String, dynamic> toJson() => _$RestaurantModelToJson(this);

 factory RestaurantModel.fromJson({
   required Map<String, dynamic> json,
 }) {
   return RestaurantModel(
     id: json['id'],
     name: json['name'],
    thumbUrl: 'http://$ip${json['thumbUrl']}',
    tags: List<String>.from(json['tags']),
    priceRange: RestaurantPriceRange.values.firstWhere(
          (e) => e.name == json['priceRange'],
     ),
    ratings: json['ratings'],
     ratingsCount: json['ratingsCount'],
    deliveryTime: json['deliveryTime'],
     deliveryFee: json['deliveryFee'],
  );
 }
}