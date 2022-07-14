import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/location.dart';

class LocationModel extends Location {
  const LocationModel(
      {String? name,
      String? region,
      String? country,
      double? lat,
      double? lon,
      String? tzId,
      int? localtimeEpoch,
      String? localtime})
      : super(
          name: name,
          region: region,
          country: country,
          lat: lat,
          lon: lon,
          tzId: tzId,
          localtimeEpoch: localtimeEpoch,
          localtime: localtime,
        );

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
        name: json['name'] as String?,
        region: json['region'] as String?,
        country: json['country'] as String?,
        lat: (json['lat'] as num?)?.toDouble(),
        lon: (json['lon'] as num?)?.toDouble(),
        tzId: json['tz_id'] as String?,
        localtimeEpoch: json['localtime_epoch'] as int?,
        localtime: json['localtime'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country': country,
        'lat': lat,
        'lon': lon,
        'tz_id': tzId,
        'localtime_epoch': localtimeEpoch,
        'localtime': localtime,
      };

  @override
  List<Object?> get props {
    return [
      name,
      region,
      country,
      lat,
      lon,
      tzId,
      localtimeEpoch,
      localtime,
    ];
  }
}
