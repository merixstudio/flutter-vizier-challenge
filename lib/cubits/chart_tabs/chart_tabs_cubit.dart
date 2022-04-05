import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';

part 'chart_tabs_state.dart';
part 'chart_tabs_cubit.freezed.dart';

@injectable
class ChartTabsCubit extends Cubit<ChartTabsState> {
  ChartTabsCubit()
      : super(
          const ChartTabsState.tab(ChartTab.week),
        );

  void changeTab(ChartTab tab) {
    emit(
      ChartTabsState.tab(tab),
    );
  }
}
