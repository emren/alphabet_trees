import 'dart:math';

import '../base_provider.dart';

class AlphabetProvider extends BaseProvider {
  String? firstTree;
  String? secondTree;

  String _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  Random _random = Random();

  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_random.nextInt(_chars.length))));

  String? generateFirstList() {
    var generated = _getRandomString(10);
    firstTree = generated;
    print(firstTree);
    return firstTree;
  }

  String? generateSecondList() {
    var generated = _getRandomString(10);
    secondTree = generated;
    print(secondTree);
    return secondTree;
  }

  List<String> findUniqueCharactersInAlphabeticalOrder() {
    List<String> uniqueList = [];
    for (var i = 0; i < firstTree!.length; i++) {
      if (!uniqueList.contains(firstTree![i])) {
        uniqueList.add(firstTree![i]);
      }
    }
    for (var i = 0; i < secondTree!.length; i++) {
      if (!uniqueList.contains(secondTree![i])) {
        uniqueList.add(secondTree![i]);
      }
    }
    uniqueList.sort((a, b) {
      return a.compareTo(b);
    });
    print(uniqueList);
    return uniqueList;
  }
}
