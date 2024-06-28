import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents PDFScreen for Navigation
class PDFScreen extends StatefulWidget {
  static route(String pdfName, String pdfLocation) => MaterialPageRoute(
        builder: (context) => PDFScreen(
          pdfName: pdfName,
          pdfLocation: pdfLocation,
        ),
      );

  final String pdfName;
  final String pdfLocation;
  const PDFScreen({
    super.key,
    required this.pdfName,
    required this.pdfLocation,
  });

  @override
  _PDFScreen createState() => _PDFScreen();
}

class _PDFScreen extends State<PDFScreen> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pdfName),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark_outline_outlined,
              // color: Colors.black,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        widget.pdfLocation,
        key: _pdfViewerKey,
      ),
    );
  }
}
