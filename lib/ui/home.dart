import 'package:alphabet_trees/core/models/alphabet_tree_model.dart';
import 'package:alphabet_trees/core/providers/alphabet_provider/alphabet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_page_components.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selection = 0;
  late AlphabetTreeModel firstTreeModel;
  late AlphabetTreeModel secondTreeModel;
  late List<String> unique;
  @override
  void initState() {
    var alphabetProvider = Provider.of<AlphabetProvider>(context, listen: false);
    alphabetProvider.generateFirstTree();
    alphabetProvider.generateSecondTree();
    firstTreeModel = alphabetProvider.firstTreeModel!;
    //secondTreeModel = alphabetProvider.secondTreeModel!;
    unique = alphabetProvider.findUniqueCharactersInAlphabeticalOrder();
    super.initState();
  }

  getSelection(int select){
      switch(select){
        case 0:
          return AlphabetTree(tree: firstTreeModel);
        case 1:
          return AlphabetTree(tree: secondTreeModel);
        case 2:
          return Text(unique.toString());

    }
  }

  @override
  Widget build(BuildContext context) {
    var alphabetProvider = Provider.of<AlphabetProvider>(context);


    return Scaffold(
      body: SafeArea(
        child: Container(

          child: Column(
            children: [
              getSelection(selection),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 60,
                    width: 100,
                    child: MaterialButton(
                      color: Colors.blue,
                      child: Text('Create first tree'),
                      onPressed: () {
                        setState(() {
                          selection = 0;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 100,
                    child: MaterialButton(
                      color: Colors.blue,
                      child: Text('Create second tree'),
                      onPressed: () {
                        selection = 1;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 100,
                    child: MaterialButton(
                      color: Colors.blue,
                      child: Text('Compare'),
                      onPressed: () {
                        selection = 2;
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
