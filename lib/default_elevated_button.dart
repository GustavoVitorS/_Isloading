import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  final bool isLoading;
  final String label;
  final String labelIsLoading;
  final Function() onPressed;
  const DefaultElevatedButton({
    Key? key,
    this.isLoading = false,
    required this.label,
    required this.onPressed,
    this.labelIsLoading = 'Carregando...',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Visibility(
        visible: isLoading,
        child: const CircularProgressIndicator(),
        replacement: const Icon(Icons.add_circle),
      ),
      label: Text(
        isLoading ? labelIsLoading : label,
        style: const TextStyle(fontSize: 30),
      ),
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(fixedSize: const Size(300, 100)),
    );
  }
}
