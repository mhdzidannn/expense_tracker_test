import 'dart:async';

import 'package:expense_tracker_test/app_module.dart';
import 'package:expense_tracker_test/components/notification/notification_builder.dart';
import 'package:expense_tracker_test/components/notification/notification_cubit.dart';
import 'package:expense_tracker_test/components/theme.dart';
import 'package:expense_tracker_test/generated/l10n.dart';
import 'package:expense_tracker_test/misc/hooks.dart';
import 'package:expense_tracker_test/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:get_it/get_it.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  // no need to put zone here unless i have crashlytics
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => GetIt.instance.get<ThemeCubit>()),
          BlocProvider(create: (_) => GetIt.instance.get<NotificationCubit>()),
        ],
        child: HookBuilder(
          builder: (context) {
            final state = useBlocBuilder<ThemeCubit, ThemeData>();
            return Sizer(
              builder: (context, orientation, screenType) {
                return MaterialApp.router(
                  builder: (context, child) {
                    return NotificationBuilder(child: child!);
                  },
                  routerConfig: createRouter(),
                  debugShowCheckedModeBanner: false,
                  theme: state,
                  themeMode: ThemeMode.system,
                  localizationsDelegates: const [
                    Tr.delegate,
                    FormBuilderLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
