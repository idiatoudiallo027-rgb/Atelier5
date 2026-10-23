import 'dart:io';

void main() {
  stdout.write("Veuillez saisir votre âge : ");
  String? saisie = stdin.readLineSync();

  try {
    int age = int.parse(saisie!);
    print("Votre âge est de $age ans.");
  } on FormatException {
    print("Erreur : Format invalide. Veuillez entrer un nombre entier.");
  } finally {
    print("Fin d'opération");
  }
}
