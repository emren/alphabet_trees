import 'package:alphabet_trees/core/providers/alphabet_provider/alphabet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page_components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var alphabetProvider = Provider.of<AlphabetProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Container(

          child: Column(
            children: [
              ButtonRow(),
            ],
          )
        ),
      ),
    );
  }
}
