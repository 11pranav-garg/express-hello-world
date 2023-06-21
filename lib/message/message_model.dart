import '/components/message_bubbles_widget.dart';
import '/components/message_emoji_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for messageBubbles component.
  late MessageBubblesModel messageBubblesModel1;
  // Model for messageBubbles component.
  late MessageBubblesModel messageBubblesModel2;
  // Model for messageBubbles component.
  late MessageBubblesModel messageBubblesModel3;
  // Model for messageBubbles component.
  late MessageBubblesModel messageBubblesModel4;
  // Model for messageBubbles component.
  late MessageBubblesModel messageBubblesModel5;
  // Model for messageBubbles component.
  late MessageBubblesModel messageBubblesModel6;
  // Model for messageBubbles component.
  late MessageBubblesModel messageBubblesModel7;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for messageEmoji component.
  late MessageEmojiModel messageEmojiModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    messageBubblesModel1 = createModel(context, () => MessageBubblesModel());
    messageBubblesModel2 = createModel(context, () => MessageBubblesModel());
    messageBubblesModel3 = createModel(context, () => MessageBubblesModel());
    messageBubblesModel4 = createModel(context, () => MessageBubblesModel());
    messageBubblesModel5 = createModel(context, () => MessageBubblesModel());
    messageBubblesModel6 = createModel(context, () => MessageBubblesModel());
    messageBubblesModel7 = createModel(context, () => MessageBubblesModel());
    messageEmojiModel = createModel(context, () => MessageEmojiModel());
  }

  void dispose() {
    unfocusNode.dispose();
    messageBubblesModel1.dispose();
    messageBubblesModel2.dispose();
    messageBubblesModel3.dispose();
    messageBubblesModel4.dispose();
    messageBubblesModel5.dispose();
    messageBubblesModel6.dispose();
    messageBubblesModel7.dispose();
    textController?.dispose();
    messageEmojiModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
