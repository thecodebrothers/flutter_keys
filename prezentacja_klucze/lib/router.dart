import 'package:auto_route/auto_route.dart';
import 'package:prezentacja_klucze/pages/bloc_without_keys_page.dart';
import 'package:prezentacja_klucze/pages/swap_parent_with_keys_page.dart';
import 'package:prezentacja_klucze/pages/swap_parent_with_local_keys_page.dart';
import 'package:prezentacja_klucze/pages/swap_parent_with_local_keys_the_same_level_page.dart';
import 'package:prezentacja_klucze/pages/swap_parent_without_keys_page.dart';
import 'package:prezentacja_klucze/pages/duplicate_value_keys_page.dart';
import 'package:prezentacja_klucze/pages/form_page.dart';
import 'package:prezentacja_klucze/pages/object_vs_uniqe_key_page.dart';
import 'package:prezentacja_klucze/pages/swap_with_keys_page.dart';
import 'package:prezentacja_klucze/pages/menu_page.dart';
import 'package:prezentacja_klucze/pages/swap_without_keys_page.dart';

import 'pages/bloc_with_keys_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<dynamic>(page: MenuPage, initial: true),
    AutoRoute<dynamic>(page: DuplicateValueKeysPage),
    AutoRoute<dynamic>(page: ObjectVsUniqueKeyPage),
    AutoRoute<dynamic>(page: SwapWithKeysPage),
    AutoRoute<dynamic>(page: SwapWithoutKeysPage),
    AutoRoute<dynamic>(page: SwapParentWithKeysPage),
    AutoRoute<dynamic>(page: SwapParentWithoutKeysPage),
    AutoRoute<dynamic>(page: SwapParentWithLocalKeysPage),
    AutoRoute<dynamic>(page: SwapParentWithLocalKeysTheSameLevelPage),
    AutoRoute<dynamic>(page: BlocWithKeysPage),
    AutoRoute<dynamic>(page: FormPage),
    AutoRoute<dynamic>(page: BlocWithoutKeysPage),
  ],
)
class $AppRouter {}
