// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eco_app/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomtextField extends StatefulWidget {
  const CustomtextField({
    super.key,
    required FocusNode focusNode,
    required String hintText,
    required TextEditingController controller,
    bool password = false,
  })  : _focusNode = focusNode,
        _hintText = hintText,
        _isPassword = password,
        _controller = controller;

  final FocusNode _focusNode;
  final String _hintText;
  final bool _isPassword;
  final TextEditingController _controller;

  @override
  State<CustomtextField> createState() => _CustomtextFieldState();
}

class _CustomtextFieldState extends State<CustomtextField> {
  bool _showHideText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget._controller,
      focusNode: widget._focusNode,
      obscureText: widget._isPassword ? _showHideText : false,
      decoration: InputDecoration(
        hintText: widget._hintText,
        suffixIcon: widget._isPassword
            ? IconButton(
                onPressed: _tapToShowAndHide,
                icon: widget._isPassword
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility))
            : null,
        hintStyle:
            robotoMedium.copyWith(color: Theme.of(context).disabledColor),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(),
      ),
    );
  }

  _tapToShowAndHide() {
    _showHideText = !_showHideText;
    setState(() {});
  }
}
