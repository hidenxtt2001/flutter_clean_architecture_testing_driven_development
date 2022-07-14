import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/domain/entities/weather/weather.dart';

import 'current_model.dart';
import 'location_model.dart';

class WeatherModel extends Weather {
  const WeatherModel({LocationModel? location, CurrentModel? current})
      : super(location: location, current: current);

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        location: json['location'] == null
            ? null
            : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
        current: json['current'] == null
            ? null
            : CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'location': (location as LocationModel?)?.toJson(),
        'current': (current as CurrentModel?)?.toJson(),
      };
  @override
  List<Object?> get props => [location, current];
}
