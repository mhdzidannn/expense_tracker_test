import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooked_bloc/hooked_bloc.dart' as hb;

void useAsyncEffect(VoidCallback cb, [List<Object?>? keys]) {
  final context = useContext();
  useEffect(() {
    WidgetsBinding.instance.endOfFrame.then(
      (_) {
        if (!context.mounted) return;
        cb();
      },
    );
    return null;
  }, keys);
}

S useBlocBuilder<T extends BlocBase<S>, S>({hb.BlocBuilderCondition<S>? buildWhen, bool closeOnDispose = false}) {
  final cubit = hb.useBloc<T>(closeOnDispose: closeOnDispose);
  final test = hb.useBlocBuilder<T, S>(
    cubit,
    buildWhen: buildWhen,
  );
  return test;
}

typedef FetchPage = FutureOr<void> Function(int page);

class PaginationController {
  final void Function() next;
  final void Function() refresh;

  const PaginationController({
    required this.next,
    required this.refresh,
  });
}

PaginationController usePagination(
  FetchPage fetchPage, {
  int initialPage = 0,
  bool Function(int nextPage)? hasNext,
}) {
  final page = useState(initialPage);
  final isRefreshing = useState(false);
  final isLoadingMore = useState(false);

  final debounce = useDebounced<Function(int)>(
    (page) {
      fetchPage(page);
    },
    Duration(milliseconds: 500),
  );

  Future<void> refresh() async {
    if (isRefreshing.value) return;
    isRefreshing.value = true;
    page.value = initialPage;
    await fetchPage(page.value);
    isRefreshing.value = false;
  }

  void next() {
    if (isLoadingMore.value) return;
    isLoadingMore.value = true;
    final nextPage = page.value + 1;
    if (hasNext != null && !hasNext(nextPage)) {
      isLoadingMore.value = false;
      return;
    }
    page.value = nextPage;
    debounce?.call(page.value);
    isLoadingMore.value = false;
  }

  useAsyncEffect(refresh, []);

  return PaginationController(
    next: next,
    refresh: refresh,
  );
}
