import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../globals/quotelist.dart';
import '../model/quote_model.dart';
import '../provider/quote_data_provider.dart';
QuotesModel quotesModel = QuotesModel();
class QuoteData extends StatelessWidget {
  const QuoteData({super.key});

  @override
  Widget build(BuildContext context) {

    QuotesProvider quotesProviderTrue =
    Provider.of<QuotesProvider>(context, listen: true);
    QuotesProvider quotesProviderFalse =
    Provider.of<QuotesProvider>(context, listen: false);

    quotesModel = QuotesModel.toList(quotesList);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.format_quote,color: Colors.white,),
        backgroundColor: const Color(0xff17273F),
        centerTitle: true,
        title: const Text('Quotes',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        actions: [const Icon(Icons.format_quote,color: Colors.white,),],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          // itemCount: quotesModel.quoteModelList.length,
          itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Color(0xffE2E2FE),
            child: ListTile(
              title: Text(
                 quotesModel.quoteModelList[index].quote.toString(),


              ),
              subtitle: Text(
                 quotesModel.quoteModelList[index].author.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13
                ),


              ),
              trailing: GestureDetector(
                  onTap: () {
                    quotesProviderFalse.deleteQuotes(index);
                  },
                  child: const Icon(
                    Icons.delete,
                  )),
            ),
          ),
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff17273F),
        onPressed: () {

          showDialog(
            context: context,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: AlertDialog(
                icon: Icon(Icons.format_quote_outlined,color: Colors.white,),
                backgroundColor: const Color(0xff17273F),
                title: const Text(
                  'Add Your Quotes',
                  style: TextStyle(color: Colors.white),
                ),
                content: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field Must be Required !';
                          }
                          return null;
                        },
                        controller: txtQuote,
                        decoration: InputDecoration(
                            hintText: 'Quote',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),),
                        ),
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field Must be Required !';
                          }
                          return null;
                        },
                        controller: txtAuthor,
                        decoration: InputDecoration(
                            hintText: 'Author',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),),
                        ),

                      ),
                    ],
                  ),
                ),
                actions: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                  const SizedBox(
                    width: 7,
                  ),
                  GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pop(context);
                          quotesProviderFalse.addQuotes(
                              txtQuote.text.toString(),
                              txtAuthor.text.toString());
                        }
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          );
          txtQuote = TextEditingController();
          txtAuthor = TextEditingController();
        },
        child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
