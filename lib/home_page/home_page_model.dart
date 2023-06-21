import '/components/message_preview_widget.dart';
import '/components/pinned_message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for pinnedMessage component.
  late PinnedMessageModel pinnedMessageModel1;
  // Model for pinnedMessage component.
  late PinnedMessageModel pinnedMessageModel2;
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel1;
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel2;
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel3;
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel4;
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel5;
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel6;
  // Model for messagePreview component.
  late MessagePreviewModel messagePreviewModel7;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pinnedMessageModel1 = createModel(context, () => PinnedMessageModel());
    pinnedMessageModel2 = createModel(context, () => PinnedMessageModel());
    messagePreviewModel1 = createModel(context, () => MessagePreviewModel());
    messagePreviewModel2 = createModel(context, () => MessagePreviewModel());
    messagePreviewModel3 = createModel(context, () => MessagePreviewModel());
    messagePreviewModel4 = createModel(context, () => MessagePreviewModel());
    messagePreviewModel5 = createModel(context, () => MessagePreviewModel());
    messagePreviewModel6 = createModel(context, () => MessagePreviewModel());
    messagePreviewModel7 = createModel(context, () => MessagePreviewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    pinnedMessageModel1.dispose();
    pinnedMessageModel2.dispose();
    messagePreviewModel1.dispose();
    messagePreviewModel2.dispose();
    messagePreviewModel3.dispose();
    messagePreviewModel4.dispose();
    messagePreviewModel5.dispose();
    messagePreviewModel6.dispose();
    messagePreviewModel7.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
