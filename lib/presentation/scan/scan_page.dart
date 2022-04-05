import 'dart:async';
import 'package:apptest/application/scan/scan_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> with TickerProviderStateMixin {
  final GlobalKey qrkey = GlobalKey(debugLabel: 'QR');
  bool isScan = false;
  QRViewController? controller;
  Barcode? result;
  Timer? timerForTimeout;
  late AnimationController animationController;

  void startTimeout([int? milliseconds]) {
    final duration = milliseconds == null
        ? const Duration(seconds: 5)
        : const Duration(milliseconds: 1) * milliseconds;
    timerForTimeout = Timer(duration, _handleTimeout);
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..addListener(() {
        setState(() {
          controller!.stopCamera();
        });
        animationController.repeat(reverse: true);
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Dimension du scan
    final size = MediaQuery.of(context).size;
    final scanArea = 250.0 / size.height * size.height;

    //Le Scan en lui même
    return Scaffold(
      body: _scanDisplay(context, scanArea),
    );
  }

  //événement durant et aprês le scan
  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    startTimeout(10000);

    controller.scannedDataStream.listen((result) {
      if (BarcodeFormat.qrcode == result.format) {
        controller.stopCamera();
        controller.dispose();
        BlocProvider.of<ScanBloc>(context, listen: false)
            .add(ScanEvent.scanCheckRequested(result.code));
        context.router.popUntilRouteWithName('HomeRoute');
      }
    });
  }

  Stack _scanDisplay(BuildContext context, double scanArea) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/fond_2.jpg",
              ),
            ),
          ),
          child: Center(
            child: SizedBox(
              height: scanArea,
              width: scanArea,
              child: QRView(
                key: qrkey,
                onQRViewCreated: onQRViewCreated,
                overlay: QrScannerOverlayShape(
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: scanArea,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _handleTimeout() {
    controller!.stopCamera();
    BlocProvider.of<ScanBloc>(context, listen: false)
        .add(const ScanEvent.scanDisplayErrorRequested());
    context.router.popUntilRouteWithName('HomeRoute');
  }

  @override
  void dispose() {
    controller?.dispose();
    timerForTimeout?.cancel();
    animationController.dispose();
    super.dispose();
  }
}
