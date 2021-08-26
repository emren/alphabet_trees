import 'package:alphabet_trees/core/providers/alphabet_provider/alphabet_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Alphabet Provider Tests', () {
    setUp(() {});

    test('First Tree should start empty', () {
      AlphabetProvider alphabetProvider = AlphabetProvider();
      String? firstTree = alphabetProvider.firstTreeString;
      bool empty = firstTree == null;
      expect(empty, true);
    });

    test('Second Tree should start empty', () {
      AlphabetProvider alphabetProvider = AlphabetProvider();
      String? secondTree = alphabetProvider.secondTreeString;
      bool empty = secondTree == null;
      expect(empty, true);
    });

    test('Generate First Tree method should create a non null String', () {
      AlphabetProvider alphabetProvider = AlphabetProvider();
      alphabetProvider.generateFirstTree();
      String? firstTree = alphabetProvider.firstTreeString;
      bool empty = firstTree != null;
      expect(empty, true);
    });

    test('Generate Second Tree method should create a non null String', () {
      AlphabetProvider alphabetProvider = AlphabetProvider();
      alphabetProvider.generateSecondTree();
      String? secondTree = alphabetProvider.secondTreeString;
      bool empty = secondTree != null;
      expect(empty, true);
    });

    test('Find Unique Characters should produce a non empty List', () {
      AlphabetProvider alphabetProvider = AlphabetProvider();
      alphabetProvider.generateFirstTree();
      alphabetProvider.generateSecondTree();
      var uniqueList = alphabetProvider.findUniqueCharactersInAlphabeticalOrder();
      bool empty = uniqueList != null;
      expect(empty, true);
    });
  });
}
