import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:her_wallet/features/blog/presentation/cubit/blog_state.dart';

class BlogCubit extends Cubit<BlogState> {
  BlogCubit() : super(BlogState());

  void selectFilter(String? filter) {
    emit(state.copyWith(selectedFilter: filter));
  }

  void updateSearchQuery(String query) {
    emit(state.copyWith(searchQuery: query));
  }

  void setLoading(bool loading) {
    emit(state.copyWith(isLoading: loading));
  }
}
