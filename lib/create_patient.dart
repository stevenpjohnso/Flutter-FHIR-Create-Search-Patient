import 'package:flutter/material.dart';

import 'hapi_create.dart';
import 'hapi_search.dart';
import 'name_contoller.dart';
import 'small_action_button.dart';

class CreatePatient extends StatelessWidget {
  const CreatePatient({super.key});

  @override
  Widget build(BuildContext context) {
    final lastName = TextEditingController();
    final firstName = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //* Hapi FHIR calls
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              nameContainer(lastName, 'Last name'),
              nameContainer(firstName, 'First name'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SmallActionButton(
                  title: 'Hapi: Create',
                  onPressed: () => hapiCreate(
                        firstName.text,
                        lastName.text,
                      )),
              SmallActionButton(
                title: 'Hapi: Search',
                onPressed: () => hapiSearch(
                  firstName.text,
                  lastName.text,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
