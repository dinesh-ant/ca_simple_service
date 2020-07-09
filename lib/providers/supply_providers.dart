import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders = [
  ChangeNotifierProvider(
    create: (context) {},
  ),
  // ChangeNotifierProvider(
  //   create: (context) => CommunityProvider(),
  // ),
];
