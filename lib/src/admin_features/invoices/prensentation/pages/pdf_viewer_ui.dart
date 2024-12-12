import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class PDFViewerUi extends StatefulWidget {
  const PDFViewerUi({super.key, this.pdfData});
  final String? pdfData;
  @override
  State<PDFViewerUi> createState() => _PDFViewerUiState();
}

class _PDFViewerUiState extends State<PDFViewerUi> {
  String localPath = '';

  @override
  void initState() {
    super.initState();
    loadPDF();
  }

  Future<void> loadPDF() async {
    final byteData = await rootBundle.load(widget.pdfData ?? '');
    final tempDir = await getTemporaryDirectory();
    final tempFile = File('${tempDir.path}/book.pdf');
    await tempFile.writeAsBytes(byteData.buffer.asUint8List());
    setState(() {
      localPath = tempFile.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return localPath.isNotEmpty
        ? PDFView(
            filePath: localPath,
            enableSwipe: true,
          )
        : const Center(child: CircularProgressIndicator());
  }
}
