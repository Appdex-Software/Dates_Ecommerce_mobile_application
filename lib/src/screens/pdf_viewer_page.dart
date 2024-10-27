
import 'package:date_farm/src/admin_features/invoices/prensentation/pages/pdf_viewer_ui.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../core/constants/adaptive.dart';

@RoutePage()
class PdfViewerPage extends StatefulWidget {
  const PdfViewerPage({super.key, required this.pdfData});
  final dynamic pdfData;
  @override
  State<PdfViewerPage> createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const TransparentAppBar(
        elevation: 0,
        color: Colors.transparent,
        
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: PDFViewerUi(pdfData: widget.pdfData,),
        tablet: PDFViewerUi(pdfData: widget.pdfData,),
        desktop: PDFViewerUi(pdfData: widget.pdfData,),
      ),
    );
  }
}
