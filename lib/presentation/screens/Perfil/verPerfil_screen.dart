import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerPerfilScreen extends StatelessWidget {
  final Map<String, String> datos;

  const VerPerfilScreen({
    super.key,
    required this.datos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.indigo[100],
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.indigo[700],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildProfileDetail(
                      label: 'Nombre',
                      value: datos['nombre'] ?? '',
                    ),
                    const SizedBox(height: 16),
                    _buildProfileDetail(
                      label: 'Edad',
                      value: '${datos['edad']} años',
                    ),
                    const SizedBox(height: 16),
                    _buildProfileDetail(
                      label: 'Ocupación',
                      value: datos['ocupacion'] ?? '',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                backgroundColor: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 5,
              ),
              onPressed: () {
                context.go('/');
              },
              child: const Text(
                'Regresar a Inicio',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetail({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
