part of 'contact_bloc.dart';

@immutable
sealed class ContactState {}

final class ContactInitial extends ContactState {}

final class ContactLoaded extends ContactState {
  final List<ContactModel> contacts;

  ContactLoaded({required this.contacts});
}
