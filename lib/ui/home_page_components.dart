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
                alphabetProvider.generateFirstList();
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
                alphabetProvider.generateSecondList();
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
