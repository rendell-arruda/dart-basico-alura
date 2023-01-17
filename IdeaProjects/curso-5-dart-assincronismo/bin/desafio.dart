void main() {
  Future conversationFunc() async {
    
    try {
      print('Once upon a time!');
      await Future.delayed(Duration(seconds: 2));
      print('João:Bom dia, grupo!');
      await Future.delayed(Duration(seconds: 1));
      print('Mariana: Bom dia! Tudo bem?');
      await Future.delayed(Duration(seconds: 1));
      print('João:Suave e você?');
      await Future.delayed(Duration(seconds: 1));
      print('Mariana: Certinho');
    } catch (e) {
    print('An error occurred: $e');
    } finally {
      print('Talk finished');
    }
    return 12;
  }

  conversationFunc().then((value) => print('$value'));
}
