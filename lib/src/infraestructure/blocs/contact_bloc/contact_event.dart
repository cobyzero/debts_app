part of 'contact_bloc.dart';

@immutable
sealed class ContactEvent {}

class GetContactsEvent extends ContactEvent {}

class AddContactEvent extends ContactEvent {
  final ContactModel contact;

  AddContactEvent({required this.contact});
}
