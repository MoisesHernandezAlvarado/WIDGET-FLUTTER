import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CrearPerfilScreen extends StatefulWidget {
  const CrearPerfilScreen({super.key});

  @override
  State<CrearPerfilScreen> createState() => _CrearPerfilScreenState();
}

class _CrearPerfilScreenState extends State<CrearPerfilScreen> {
  final _nombreController = TextEditingController();
  final _edadController = TextEditingController();
  final _ocupacionController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    _edadController.dispose();
    _ocupacionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Crear Perfil'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Text(
              'Complete la información del perfil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 16),
            _buildTextField(
              controller: _nombreController,
              label: 'Nombre',
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 16),
            _buildTextField(
              controller: _edadController,
              label: 'Edad',
              icon: Icons.cake_outlined,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            _buildTextField(
              controller: _ocupacionController,
              label: 'Ocupación',
              icon: Icons.work_outline,
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  backgroundColor: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
                onPressed: () {
                  final datosUsuario = {
                    'nombre': _nombreController.text,
                    'edad': _edadController.text,
                    'ocupacion': _ocupacionController.text,
                  };
                  context.push('/ver-perfil', extra: datosUsuario);
                },
                child: const Text(
                  'Guardar y Ver Perfil',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.indigo),
        prefixIcon: Icon(icon, color: Colors.indigo),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.indigo),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.indigo, width: 2),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
