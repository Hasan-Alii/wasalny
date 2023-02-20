import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyOTPScreen extends StatelessWidget {
  const VerifyOTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verify OTP')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Verification code',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline6,
            ),
            const SizedBox(height: 16),
            Text(
              'We have sent the verification code to',
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1,
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 68,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPinField(context),
                  _buildPinField(context),
                  _buildPinField(context),
                  _buildPinField(context),
                ],
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                // TODO: Implement change phone number functionality
              },
              child: Text(
                'Change phone number?',
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPinField(BuildContext context) {
    final textEditingController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 68,
        width: 64,
        child: TextField(
          controller: textEditingController,
          autofocus: true,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "0",
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.3),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Theme
                  .of(context)
                  .colorScheme
                  .secondary),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          style: Theme
              .of(context)
              .textTheme
              .headline6,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {
            if (value.isNotEmpty) {
              FocusScope.of(context).nextFocus();
            }
          },
          onTap: () {
            if (textEditingController.text.isEmpty) {
              textEditingController.clear();
            }
          },
        ),
      ),
    );
  }
}
