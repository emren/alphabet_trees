import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'alphabet_provider/alphabet_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (context) => AlphabetProvider(),
  ),
];
