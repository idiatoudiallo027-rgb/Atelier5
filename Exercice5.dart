import 'dart:io';

// Classe d'exception personnalisée NombreNegatifException
class NombreNegatifException implements Exception {
  final String message;
  NombreNegatifException(this.message);

  @override
  String toString() => message;
}

void main() {
  stdout.write("Veuillez saisir un nombre : ");
  String? saisie = stdin.readLineSync();

  try {
    double nombre = double.parse(saisie!);

    //  Si le nombre est négatif, lève une exception personnalisée
    if (nombre < 0) {
      throw NombreNegatifException("Erreur : Le nombre saisi est négatif.");
    }

    double carre = nombre * nombre;
    print("Le carré de $nombre est : $carre");
  } on FormatException {
    print("Erreur : Veuillez entrer un format de nombre valide.");
  } on NombreNegatifException catch (e) {
    print(e);
  } catch (e) {
    print("Erreur inattendue : $e");
  } finally {
    print("Fin d'opération");
  }
}
