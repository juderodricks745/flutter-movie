import 'package:flutter/material.dart';

class ErrorWithRetry extends StatelessWidget {
  const ErrorWithRetry({Key? key, required this.errorMessage, required this.onPressed}) : super(key: key);

  final String errorMessage;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            onPressed: onPressed,
            child: Container(
              height: 45,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Retry",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}