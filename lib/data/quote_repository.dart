import '/constants/config.dart'as config;
import '/constants/api_manager.dart' ;
import 'dart:async';
import 'dart:convert';

abstract class SaitamaQuoteRepository {
  Future<void> fetchQuotes(String charcterName);
}

class QuoteRepository implements SaitamaQuoteRepository {
  @override
  Future<void> fetchQuotes(String charcterName) {
    // fetch("https://animechan.vercel.app/api/quotes/character?name=saitama")
    final response =   ApiManager().getQuotesRequest(config.config.url+charcterName)  ;
    
    return response.fromJson(jsonDecode(response));
  }
}
