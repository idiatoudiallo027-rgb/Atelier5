void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Le mot de passe doit contenir au moins 6 caractères.");
  }
}

void main() {
  try {
    verifierMotdepasse("dia");
    print("Mot de passe valide.");
  } catch (e) {
    print("Erreur : $e");
  }
}
