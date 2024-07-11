import 'package:flutter/material.dart';
import '../globals/quotelist.dart';

class QuotesProvider extends ChangeNotifier {

  void addQuotes(String quote, String author)
  {
    quotesList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();
  }

  void deleteQuotes(int index)
  {
    quotesList.removeAt(index);
    notifyListeners();
  }
}