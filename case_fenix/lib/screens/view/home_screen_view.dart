import 'package:case_fenix/data/model/movie_main_model.dart';
import 'package:case_fenix/get_it/get_it.dart';
import 'package:case_fenix/global_widgets/app_constans.dart';
import 'package:case_fenix/global_widgets/color_palette.dart';
import 'package:case_fenix/global_widgets/padding_extensions.dart';
import 'package:case_fenix/global_widgets/texfield_component/textfiled_component.dart';
import 'package:case_fenix/results/result_state_widget.dart';
import 'package:case_fenix/screens/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreenView extends StatefulWidget {
  final String? query;
  const HomeScreenView({super.key, this.query});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final HomeViewmodel _homeViewmodel = getIt.get<HomeViewmodel>();
  @override
  void initState() {
    _homeViewmodel.getSearchMovie(query: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: ColorPalette.blueDark,
        appBar: AppBar(
          title: Text(AppConstans.appBarTitle),
          elevation: 0,
          scrolledUnderElevation: 0,
          backgroundColor: ColorPalette.blueDark,
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 40),
            child: _buildTextField(),
          ),
        ),
        body: Observer(
          builder: ((context) => ResultStateWidget<MovieMainModel?>(
              resultState: _homeViewmodel.movieResultState, completed: _buildWidget)),
        ),
      ),
    );
  }

  Widget _buildWidget(MovieMainModel? data) =>
      Padding(padding: context.globalAll16x, child: _buildMovieSearch(data));

  Widget _buildMovieSearch(MovieMainModel? data) {
    return _homeViewmodel.tempMovieList.isNotEmpty
        ? GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, childAspectRatio: 0.67),
            itemBuilder: (context, index) {
              if (_homeViewmodel.tempMovieList.length - 10 == index) {
                if (_homeViewmodel.page < data!.total_pages!) {
                  _homeViewmodel.page++;
                  _homeViewmodel.getSearchMovie(query: _homeViewmodel.searchText?.text);
                }
              }
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      AppConstans.imageUrl(_homeViewmodel.tempMovieList[index].poster_path ?? ''),
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(
                          Icons.error_outline_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 50,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withValues(alpha: 0.6),
                            Colors.black.withValues(alpha: 0.8),
                            Colors.black.withValues(alpha: 0.9),
                          ],
                        ),
                      ),
                      child: Text(
                        _homeViewmodel.tempMovieList[index].original_title ?? '',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: _homeViewmodel.tempMovieList.length,
          )
        : Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppConstans.searchMovieGif),
                Text(
                  AppConstans.homeViewText,
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
  }

  Widget _buildTextField() {
    return TextFieldComponent(
      keyboardType: TextInputType.text,
      labelText: AppConstans.labelText,
      controller: _homeViewmodel.searchText,
      suffix: IconButton(
          onPressed: () {
            _homeViewmodel.clearSearch();
            FocusScope.of(context).unfocus();
          },
          icon: Icon(
            Icons.clear_outlined,
            color: Colors.white,
          )),
      onChanged: (value) {
        if (value.length >= 2) {
          _homeViewmodel.getSearchMovie(query: _homeViewmodel.searchText?.text);
        } else if (value.isEmpty) {
          _homeViewmodel.clearSearch();
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                AppConstans.searchRule,
              ),
            ),
          );
        }
      },
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
      },
    );
  }
}
