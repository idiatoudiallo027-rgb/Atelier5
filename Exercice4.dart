// Crée une classe d'exception personnalisée
class MotdepasseCourtException implements Exception {
  final String message;
  MotdepasseCourtException(this.message);

  @override
  String toString() => message;
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
      "Erreur : Le mot de passe est trop court (moins de 6 caractères).",
    );
  }
}

void main() {
  try {
    verifierMotdepasse(
      "123",
    ); // Mot de passe invalide afin de tester l'exception
    print("Mot de passe accepté.");
  } on MotdepasseCourtException catch (e) {
    print("Exception interceptée : $e");
  } catch (e) {
    print("Autre erreur : $e");
  }
}
