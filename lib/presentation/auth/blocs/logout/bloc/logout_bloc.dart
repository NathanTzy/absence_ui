import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:training/data/dataresource/auth_remote_datasource.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthRemoteDatasource authRemoteDatasource;
  
  LogoutBloc(this.authRemoteDatasource) : super(LogoutInitial()) {
    on<LogoutButtonPressed>((event, emit) async {
      emit(LogoutLoading());
      final response = await authRemoteDatasource.logout();
      
      response.fold(
        (l) => emit(LogoutFailed(message: l)), 
        (r) => emit(LogoutSuccess())
      );
    });
  }
}
