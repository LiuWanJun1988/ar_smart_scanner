import 'package:flutter/material.dart';

typedef FreezeCallback = void Function(bool isFrozen);

class FreezeButton extends StatefulWidget {
  final FreezeCallback onPressed;

  const FreezeButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  createState() => _FreezeButtonState();
}

class _FreezeButtonState extends State<FreezeButton> {
  final AssetImage _freezeButtonAsset = const AssetImage("assets/images/freeze_enabled.png");
  final AssetImage _unfreezeButtonAsset = const AssetImage("assets/images/freeze_disabled.png");

  late AssetImage _buttonAsset;
  var _capturingFrozen = false;

  @override
  void initState() {
    super.initState();
    _buttonAsset = _freezeButtonAsset;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 120,
        width: 120,
        child: TextButton(
          onPressed: () => _onPressed(context),
          style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
          child: Image(image: _buttonAsset),
        ));
  }

  _onPressed(BuildContext context) {
    setState(() {
      _capturingFrozen = !_capturingFrozen;
      _buttonAsset = _capturingFrozen ? _unfreezeButtonAsset : _freezeButtonAsset;
      widget.onPressed(_capturingFrozen);
    });
  }
}
