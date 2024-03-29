import 'dart:async';

import 'package:smartwallet/logic/viewmodel/contact_view_model.dart';
import 'package:smartwallet/models/contact/contact_response.dart';

class ContactBloc {
  final _contactVM = ContactViewModel();
  final contactController = StreamController<List<ContactResponse>>();

  Stream<List<ContactResponse>> get contactItems => contactController.stream;

  ContactBloc() {
    contactController.add(_contactVM.getContacts());
  }
}
