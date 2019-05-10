import 'package:fluro/fluro.dart';
import 'splashPage.dart';
import 'index.dart';

class Routes {
  static Router router;
  static String home = '/';
  static String index = '/index';
  static String goodsDesc = '/goodsDesc';
  static String goodsSearch = '/goodsSearch';
  static String shopIndex = '/shopIndex';
  static String shopDesc = '/shopDesc';

  static void configureRoutes(Router router) {
    router.define(home, handler: Handler(handlerFunc: (context, params) => SplashPage()));
    router.define(index, handler: Handler(handlerFunc: (context, params) => Index()));
    router.define(goodsSearch, handler: Handler(handlerFunc: (context, params) {
      var data = params['data']?.first; //取出传参
//      return GoodsSearch(data);
    }));

    Routes.router = router;
  }
}
