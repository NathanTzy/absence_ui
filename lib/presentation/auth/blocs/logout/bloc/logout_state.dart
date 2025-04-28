part of 'logout_bloc.dart';

@immutable
sealed class LogoutState {}

class LogoutInitial extends LogoutState {}

class LogoutLoading extends LogoutState {}

class LogoutSuccess extends LogoutState {}

class LogoutFailed extends LogoutState {
  final String message;
  
  LogoutFailed({required this.message});
}
