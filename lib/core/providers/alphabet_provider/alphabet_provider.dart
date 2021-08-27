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
    var treeLength = _random.nextInt(10) + 10;
    var generated = _getRandomString(treeLength);
    firstTreeString = generated;
    firstTreeModel = AlphabetTreeModel();
    firstTreeModel?.firstRow = firstTreeString![0];
    int secondRowLength = _random.nextInt(5) + 1;
    firstTreeModel?.secondRow =
        firstTreeString!.substring(1, secondRowLength + 1);
    var remaining = firstTreeString!.substring(secondRowLength + 1, treeLength);
    int end = 0;
    List<String> thirdRow = [];
    for (var i = 0; i < secondRowLength; i++) {
      int length = _random.nextInt(3);
      String subString = remaining.substring(end, end + length);
      thirdRow.add(subString);
      end = end + length;
    }
    firstTreeModel?.thirdRow = thirdRow;
    return firstTreeString;
  }

  String? generateSecondTree() {
    var treeLength = _random.nextInt(10) + 10;
    var generated = _getRandomString(treeLength);
    secondTreeString = generated;
    secondTreeModel = AlphabetTreeModel();
    secondTreeModel?.firstRow = secondTreeString![0];
    int secondRowLength = _random.nextInt(5) + 1;
    secondTreeModel?.secondRow =
        secondTreeString!.substring(1, secondRowLength + 1);
    var remaining =
        secondTreeString!.substring(secondRowLength + 1, treeLength);
    int end = 0;
    List<String> thirdRow = [];
    for (var i = 0; i < secondRowLength; i++) {
      int length = _random.nextInt(3);
      String subString = remaining.substring(end, end + length);
      thirdRow.add(subString);
      end = end + length;
    }
    secondTreeModel?.thirdRow = thirdRow;
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
    print('Unique Characters: ' + uniqueList.toString());
    return uniqueList;
  }
}
