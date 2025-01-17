
import 'package:case_fenix/data/model/movie_main_model.dart';
import 'package:case_fenix/data/model/movie_result_model.dart';
import 'package:case_fenix/data/repository/i_home_repository.dart';
import 'package:case_fenix/results/base_errors_model.dart';
import 'package:case_fenix/results/result_state.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'home_view_model.g.dart';

class HomeViewmodel = _HomeViewmodelBase with _$HomeViewmodel;

abstract class _HomeViewmodelBase with Store {
  final IHomeRepository? iHomeRepository;
  _HomeViewmodelBase({required this.iHomeRepository});

  @observable
  ResultState<MovieMainModel?> movieResultState = const ResultState.initial();

  @observable
  TextEditingController? searchText = TextEditingController();
  @observable
  ObservableList<MovieResultModel> tempMovieList = ObservableList<MovieResultModel>();

  @observable
  int page = 1;

  @action
  Future<void> getSearchMovie({String? query}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final result = await iHomeRepository?.searchMovie(query: query, page: page);
    result?.when(success: (data) {
      movieResultState = ResultState.completed(data);
      if (data.results?.isNotEmpty == true) {
        tempMovieList = ObservableList.of(tempMovieList..addAll(data.results!));
      }
    }, failure: (error) {
      movieResultState =
          ResultState.failed(BaseErrorsModel(message: error.meta?.infoList?.first.message));
    });
  }

  @action
  void clearSearch() {
    searchText?.clear();
    getSearchMovie(query: '');
    page = 1;
    tempMovieList.clear();
  }
}
