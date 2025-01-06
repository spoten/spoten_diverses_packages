import 'dart:io';

import 'passkit_file.dart';

class PasskitGenerated {
  final PasskitFile passkitFile;
  final File manifestFile;
  final File passFile;
  final File signatureFile;
  final Directory directory;

  PasskitGenerated({
    required this.passkitFile,
    required this.manifestFile,
    required this.signatureFile,
    required this.passFile,
    required this.directory,
  });
}
