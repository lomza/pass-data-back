import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:pass_data_previous_screen/page/details_page.dart';
import 'package:pass_data_previous_screen/page/main_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: MainPage, initial: true),
    AutoRoute<String>(page: DetailsPage),
  ],
)
class $MainRouter {}
