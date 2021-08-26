import 'dart:math';

import 'package:alphabet_trees/core/models/alphabet_tree_model.dart';

import '../base_provider.dart';

class AlphabetProvider extends BaseProvider {
  String? firstTreeString;
  String? secondTreeString;
  AlphabetTreeModel? firstTreeModel;
  AlphabetTreeModel? secondTreeModel;

  String _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Random _random = Random();

  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_random.nextInt(_chars.length))));

  String? generateFirstTree() {
    var number = _random.nextInt(10) + 10;
    var generated = _getRandomString(number);
    firstTreeString = generated;
    print(firstTreeString);
    firstTreeModel = AlphabetTreeModel();
    firstTreeModel?.firstRow = firstTreeString![0];
    int secondRowLength = _random.nextInt(5) + 1;
    firstTreeModel?.secondRow = firstTreeString!.substring(1, secondRowLength + 1);
    int remainingLength = number - secondRowLength;
    print(secondRowLength);
    print(remainingLength);
    var remaining = firstTreeString!
        .substring(secondRowLength +1  , number)
        .split('');
    print(remaining);
    int end = 0;
    for (var i = 0; i < secondRowLength; i++) {

      int length = _random.nextInt(4);
      print('length'+length.toString());
      end = end + length;
      print('end'+end.toString());
      // String subString = firstTreeString!
      //     .substring(secondRowLength , length);
      // print(subString);
      print(length);

    }
    print(firstTreeModel!.firstRow);
    print(firstTreeModel!.secondRow);
    return firstTreeString;
  }

  String? generateSecondTree() {
    var number = _random.nextInt(10) + 10;
    var generated = _getRandomString(number);
    secondTreeString = generated;
    print(secondTreeString);
    return secondTreeString;
  }

  List<String> findUniqueCharactersInAlphabeticalOrder() {
    List<String> uniqueList = [];
    for (var i = 0; i < firstTreeString!.length; i++) {
      if (!uniqueList.contains(firstTreeString![i])) {
        uniqueList.add(firstTreeString![i]);
      }
    }
    for (var i = 0; i < secondTreeString!.length; i++) {
      if (!uniqueList.contains(secondTreeString![i])) {
        uniqueList.add(secondTreeString![i]);
      }
    }
    uniqueList.sort((a, b) {
      return a.compareTo(b);
    });
    print(uniqueList);
    return uniqueList;
  }
}
