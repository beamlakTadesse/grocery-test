// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({this.homeModelObj});

  HomeModel? homeModelObj;

  @override
  List<Object?> get props => [
        homeModelObj,
      ];
  HomeState copyWith({HomeModel? homeModelObj}) {
    return HomeState(
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}

class LoadingSigninState extends HomeState {}

class LoadedCategoryState extends HomeState {
  final CategoryModel data;

  LoadedCategoryState({required this.data});
}

class LoadedCategoryErrorState extends HomeState {
  final String msg;

  LoadedCategoryErrorState({required this.msg});
}
