import 'package:url_launcher/url_launcher_string.dart';

Future hapiSearch(
  String lastName,
  String firstName,
) async {
  await launchUrlString('http://hapi.fhir.org/baseR4/'
      'Patient?'
      'given=$firstName&'
      'family=$lastName&'
      '_pretty=true');
}
