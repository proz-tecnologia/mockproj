import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String buttonText;
  final void Function() onPressed;
  final Icon buttonIcon;

  ///Botão circular utilizado principalmente na home.
  ///Para ter um comportamento interessante, é indicado colocá-lo dentro de um Wrap.
  const CircleButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Ink(
              decoration: ShapeDecoration(
                shape: const CircleBorder(),
                color: Colors.blue.shade900,
              ),
              child: IconButton(
                splashRadius: 24.0,
                color: Colors.white,
                onPressed: onPressed,
                icon: buttonIcon,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              buttonText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
