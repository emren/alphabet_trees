import 'package:alphabet_trees/core/models/alphabet_tree_model.dart';
import 'package:alphabet_trees/core/providers/alphabet_provider/alphabet_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var alphabetProvider = Provider.of<AlphabetProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 60,
            width: 100,
            child: MaterialButton(
              color: Colors.blue,
              child: Text('Create first tree'),
              onPressed: () {
                alphabetProvider.generateFirstTree();
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
                alphabetProvider.generateSecondTree();
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
                alphabetProvider.findUniqueCharactersInAlphabeticalOrder();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AlphabetTree extends StatelessWidget {
  //final String tree;
  final AlphabetTreeModel tree;
  const AlphabetTree({Key? key, required this.tree}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                child: Text(tree.firstRow.toString()),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 300,
            child: Center(
              child: ListView.builder(

                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: tree.secondRow!.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        child: Text(tree.secondRow![i].toString()),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
