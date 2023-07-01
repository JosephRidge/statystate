import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'saitama_quotes_state.dart';

class SaitamaQuotesCubit extends Cubit<SaitamaQuotesState> {
  SaitamaQuotesCubit() : super(SaitamaQuotesInitial());
}
