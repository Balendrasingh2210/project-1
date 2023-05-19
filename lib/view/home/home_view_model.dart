import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_1/model/home_data_model.dart';
import 'package:project_1/retrofit/api_service.dart';

part 'home_view_model.freezed.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeViewState>(
  (ref) => HomeViewModel(),
);

class HomeViewModel extends StateNotifier<HomeViewState> {
  HomeViewModel() : super(HomeViewState()) {
    _fetchHomeData();
  }

  _fetchHomeData() async {
    try {
      Dio dio = Dio();
      ApiService apiService = ApiService(dio);
      Map<String, dynamic> homeDataJson = await apiService.getHomeData();

      state = state.copyWith(
        meta: MetaInfoModel.fromJson(homeDataJson['meta']),
        data: (homeDataJson['data'] as List<dynamic>)
            .map(
              (item) => DataModel.fromJson(item),
            )
            .toList(),
        status: HomeViewStatus.loaded,
      );
      print(state.meta!.fundHouse);
      print(state.data.first.date);
    } catch (e) {
      print(e);
      state = state.copyWith(
        status: HomeViewStatus.error,
      );
    }
  }
}

@freezed
class HomeViewState with _$HomeViewState {
  factory HomeViewState({
    MetaInfoModel? meta,
    @Default(HomeViewStatus.loading) HomeViewStatus status,
    @Default([]) List<DataModel> data,
  }) = _HomeViewState;
}

enum HomeViewStatus {
  loading,
  loaded,
  error,
}
