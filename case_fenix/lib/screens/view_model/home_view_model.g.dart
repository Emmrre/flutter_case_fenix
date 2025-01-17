// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewmodel on _HomeViewmodelBase, Store {
  late final _$movieResultStateAtom =
      Atom(name: '_HomeViewmodelBase.movieResultState', context: context);

  @override
  ResultState<MovieMainModel?> get movieResultState {
    _$movieResultStateAtom.reportRead();
    return super.movieResultState;
  }

  @override
  set movieResultState(ResultState<MovieMainModel?> value) {
    _$movieResultStateAtom.reportWrite(value, super.movieResultState, () {
      super.movieResultState = value;
    });
  }

  late final _$searchTextAtom =
      Atom(name: '_HomeViewmodelBase.searchText', context: context);

  @override
  TextEditingController? get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(TextEditingController? value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  late final _$tempMovieListAtom =
      Atom(name: '_HomeViewmodelBase.tempMovieList', context: context);

  @override
  ObservableList<MovieResultModel> get tempMovieList {
    _$tempMovieListAtom.reportRead();
    return super.tempMovieList;
  }

  @override
  set tempMovieList(ObservableList<MovieResultModel> value) {
    _$tempMovieListAtom.reportWrite(value, super.tempMovieList, () {
      super.tempMovieList = value;
    });
  }

  late final _$pageAtom =
      Atom(name: '_HomeViewmodelBase.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$getSearchMovieAsyncAction =
      AsyncAction('_HomeViewmodelBase.getSearchMovie', context: context);

  @override
  Future<void> getSearchMovie({String? query}) {
    return _$getSearchMovieAsyncAction
        .run(() => super.getSearchMovie(query: query));
  }

  late final _$_HomeViewmodelBaseActionController =
      ActionController(name: '_HomeViewmodelBase', context: context);

  @override
  void clearSearch() {
    final _$actionInfo = _$_HomeViewmodelBaseActionController.startAction(
        name: '_HomeViewmodelBase.clearSearch');
    try {
      return super.clearSearch();
    } finally {
      _$_HomeViewmodelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movieResultState: ${movieResultState},
searchText: ${searchText},
tempMovieList: ${tempMovieList},
page: ${page}
    ''';
  }
}
