## 1. Description
Alphabet Tree is an algorthm based application where two random alphabet trees has to be created and then unique letters has to be shon separately

## 2. Chosen Technology
Flutter Channel stable, 2.2.3, implemented null safe  **sdk: ">=2.12.0 <3.0.0"**

## 3. Project Structure
As a best practice, UI and logic has been separated. This is achieved by collecting ui files under ui folder and logic under core folder.

## 4. State Management
For the state management **Provider** with **ChangeNotifier** has been implemented in this project. Changenotifier is Flutters own state solution, a wrapper for inherited widget, where it has notifylistener() function to update the widgets.

## 5. Packages Used
**provider** For state management

## 6. Tests
Unit tests are under test folder. Flutters own flutter_test package has been used.
```
alphabet_provider_unit_test.dart
```