import 'package:bloc/bloc.dart';
import 'package:debts_app/core/dependencies/injector.dart';
import 'package:debts_app/src/application/services/database_service.dart';
import 'package:debts_app/src/domain/models/contact_model.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial()) {
    on<GetContactsEvent>((event, emit) async {
      final contacts = await getIt<DatabaseService>().getContacts();
      emit(ContactLoaded(contacts: contacts));
    });
    on<AddContactEvent>((event, emit) async {
      await getIt<DatabaseService>().addContact(event.contact);
      add(GetContactsEvent());
    });
  }
}
