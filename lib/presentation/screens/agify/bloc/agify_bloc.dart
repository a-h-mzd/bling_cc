import 'package:bling_cc/common/client/models/response_header.dart';
import 'package:bling_cc/domain/agify/usecase.dart';
import 'package:bling_cc/presentation/screens/agify/bloc/agify_event.dart';
import 'package:bling_cc/presentation/screens/agify/bloc/agify_state.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

const _duration = Duration(milliseconds: 300);

EventTransformer<Event> _debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}

@injectable
class AgifyBloc extends Bloc<AgifyEvent, AgifyState> {
  AgifyBloc({required this.agifyUsecase}) : super(const AgifyStateEmpty()) {
    on<AgifyNameChanged>(_onTextChanged, transformer: _debounce(_duration));
  }

  final AgifyUsecase agifyUsecase;

  Future<void> _onTextChanged(
    AgifyNameChanged event,
    Emitter<AgifyState> emit,
  ) async {
    final searchTerm = event.name;

    if (searchTerm.isEmpty) {
      return emit(const AgifyStateEmpty());
    }

    emit(const AgifyStateLoading());

    try {
      final agifiedName = await agifyUsecase.fetchAgifiedName(
        name: searchTerm,
        countryId: event.countryId,
      );
      emit(AgifyStateSuccess(model: agifiedName));
    } on DioError catch (error) {
      Map<String, Object?> rawHeaders = {};
      String? errorMessage;
      try {
        rawHeaders = error.response?.headers.map ?? rawHeaders;
        errorMessage = (error.response?.data as Map?)?['error'] as String?;
      } catch (_) {}
      emit(
        AgifyStateError(
          error: errorMessage,
          statusCode: error.response?.statusCode,
          header: ResponseHeader.fromJson(rawHeaders),
        ),
      );
    } catch (error) {
      emit(const AgifyStateError());
    }
  }
}
