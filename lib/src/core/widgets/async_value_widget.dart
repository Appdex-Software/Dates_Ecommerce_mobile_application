import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/app_sizes.dart';
import 'widgets.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.data,
    this.loading,
    this.errorWidget,
  });
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget Function()? loading;
  final Widget Function(Object, StackTrace)? errorWidget;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return value.when(
      data: data,
      error: errorWidget ??
          (e, st) {
            return Center(child: ErrorMessageWidget(e.toString()));
          },
      loading: loading ??
          () => Center(
                  child: CircularProgressIndicator(
                color: theme.primary,
              )),
    );
  }
}
