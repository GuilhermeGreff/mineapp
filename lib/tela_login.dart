import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mineapp/perfil_mine.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final usuario = TextEditingController(text: 'emilys');
  final senha = TextEditingController(text: 'emilyspass');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.green.shade900, // Verde escuro
              Colors.green.shade700,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Entre no Mundo das Aventuras!',
                        style: TextStyle(
                          fontFamily: 'Minecraft',
                          fontSize: 42.0, // Aumentado
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      _buildTextField(usuario, 'Usuário', Icons.person, false),
                      const SizedBox(height: 16.0),
                      _buildTextField(senha, 'Senha', Icons.lock, true),
                      const SizedBox(height: 24.0),
                      ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              isLoading = true;
                            });
                            final url = Uri.parse('https://dummyjson.com/auth/login');
                            final response = await http.post(
                              url,
                              body: {
                                'username': usuario.text,
                                'password': senha.text,
                              },
                            );

                            if (response.statusCode == 200) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Mineapp()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Usuário ou senha incorretos'),
                                  backgroundColor: Colors.redAccent,
                                ),
                              );
                            }
                            setState(() {
                              isLoading = false;
                            });
                          }
                        },
                        child: isLoading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : const Text(
                          'Login',
                          style: TextStyle(fontFamily: 'Minecraft', fontSize: 20), // Aumentado
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          textStyle: const TextStyle(fontFamily: 'Minecraft', fontSize: 20), // Aumentado
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.lightGreen.shade200, Colors.green.shade400],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        child: TextButton(
                          onPressed: () {
                            _showForgotPasswordDialog(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.gamepad, size: 24, color: Colors.green), // Ícone de controle de jogos
                              SizedBox(width: 8.0), // Espaçamento entre ícone e texto
                              Text(
                                'Esqueceu a senha?',
                                style: TextStyle(
                                  color: Colors.white, // Mudado para branco
                                  fontFamily: 'Minecraft',
                                  fontSize: 22, // Aumentado
                                  fontWeight: FontWeight.bold, // Negrito
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Descubra novas aventuras e conquistas!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Colors.green, fontFamily: 'Minecraft'), // Aumentado
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon, bool obscure) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.lightGreen.shade200, Colors.green.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        style: const TextStyle(fontFamily: 'Minecraft', color: Colors.black),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black54),
          prefixIcon: Icon(icon, color: Colors.black),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        ),
        validator: (valor) {
          if (valor == null || valor.isEmpty) {
            return 'Insira seu $label, por favor.';
          }
          return null;
        },
      ),
    );
  }

  void _showForgotPasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Recuperação de Senha', style: TextStyle(fontFamily: 'Minecraft')),
          content: const Text(
            'Instruções de recuperação de senha foram enviadas para seu e-mail.',
            style: TextStyle(fontFamily: 'Minecraft'),
          ),
          actions: [
            TextButton(
              child: const Text('Fechar', style: TextStyle(color: Colors.teal, fontFamily: 'Minecraft')),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
