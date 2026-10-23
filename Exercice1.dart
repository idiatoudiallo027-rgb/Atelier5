void main() {
  try {
    int resultat = 12 ~/ 0;
    print(resultat);
  } catch (e) {
    print("Division impossible");
  }
}
