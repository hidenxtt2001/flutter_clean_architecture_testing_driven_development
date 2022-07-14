import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/configs/color_config.dart';
import 'package:flutter_clean_architecture/configs/text_config.dart';
import 'package:flutter_clean_architecture/presentation/blocs/home/home_bloc.dart';
import 'package:flutter_clean_architecture/presentation/pages/home/weather_info_skeleton.dart';
import 'package:flutter_clean_architecture/utils/extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/weather/weather.dart';

class HomePage extends StatefulWidget {
  static const String id = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      context
          .read<HomeBloc>()
          .add(const HomeEvent.loadCurrentWeather('vietnam'));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _bodyPage(),
    );
  }

  Widget _bodyPage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Center(
        child: _WeatherInfomation(),
      ),
    );
  }
}

class _WeatherInfomation extends StatefulWidget {
  const _WeatherInfomation({Key? key}) : super(key: key);

  @override
  State<_WeatherInfomation> createState() => __WeatherInfomationState();
}

class __WeatherInfomationState extends State<_WeatherInfomation> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when<Widget>(
          initial: () => Container(),
          loadingProgress: () {
            return const WeatherInfoSkeleton();
          },
          fetchWeatherFailed: (String message) {
            return Text(message);
          },
          fetchWeatherSuccessed: (Weather weather) {
            return _WeatherContainer(weather: weather);
          },
        );
      },
    );
  }
}

class _WeatherContainer extends StatelessWidget {
  final Weather weather;
  const _WeatherContainer({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: 'http:${weather.current?.condition?.icon}',
          imageBuilder: (context, imageProvider) {
            return Image(
              image: imageProvider,
              width: 0.2.sw,
              fit: BoxFit.fill,
            );
          },
          errorWidget: (context, url, a) {
            return Container();
          },
        ),
        Text(
          weather.location?.name ?? '',
          style: TextConfig.kBodySecondary,
        ),
        Text(
          weather.location?.country ?? '',
          style: TextConfig.kBodySecondary,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.w),
          child: Text(
            '${weather.current?.tempC?.toInt()}°C',
            style: TextConfig.kHeader1Secondary,
          ),
        ),
      ],
    );
  }
}
