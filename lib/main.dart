import 'package:flutter/material.dart';
import 'package:scandit_flutter_datacapture_barcode/scandit_flutter_datacapture_barcode.dart';
import 'matrix_scan_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScanditFlutterDataCaptureBarcode.initialize();
  runApp(const MyApp());
}

const String licenseKey = 'AdjSThyUPnRtGM2PMhypVH8nv9iOBz79sw7MP+lq2GWScBIed3GfTCRiEa9aQUzYDEXAldBOIjVVW7FXxi/vYXIhWrl9YQr+vBwGiR5JDpnFYToX3x+e/Q9OV5imKwZH4inC/4ESIQw/Ro8l2RYzunb67ceC7xnrDh4Sdzt+5zNDcPYfXcxVxlSuKPurodiouuOawRoz0ncNKqA78+KITglDglfCrHNjUocsgij6lBu/4xJvTECCbzl+Z1lXiyrf4VH9Hu4Oo2VSUo9E3//zCzaejwUI/FDHWsv+/u9E0rw/XfkXORxaUGAl/4cQsJXfHXEUCkNdLabUxXev+ggTT8ruuaWB9ZnJEXBmI32yI8EYUHn8pY9ZPnVahVkpBvDPITsl0OiVbe+9Fy9da46tGGk7YUVYYRVzhDqlfry5pGpvvZcMZyZXggwMaOXjnRgVl8lcTbHqgA6U7ccSV4g+6YzQvSgkRKbjt5OHXV4BTLh8YR+hRprvf5U5W/98WrhUs7iwcWkJAkCoLF/2UQyMYZYLUjMNLwgjAVwN54/b6sOSPJrQZLJnTrLUQ/CWVfAh3Q9SZiJvd4yFRKE4GwjesmamNUhvFFf7GcpPKH5mEA6To6wXEjOTInz/gfmtXDGXnejW2wE7+cRtOQ/bYOo+jsByRSKcjUQs22mJ/99PgTac1wE/qOsVMXmO9wQwmA2auCY8jG9EyANwPrjHR5ywCxryVoELpTAfbLXpIoSbZAyo7z+M85MtsPIffuMWyuGQz4QNK50XC0l+IjPxNfaKPa8ZrG2nsewPkqIjXrWViFC7okI7caJCINIPoA==';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MatrixScanScreen(licenseKey),
    );
  }
}
