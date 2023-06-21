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
import 'message_model.dart';
export 'message_model.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({Key? key}) : super(key: key);

  @override
  _MessageWidgetState createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  late MessageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pop();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.chevron_left_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    Container(
                      width: 16.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          '1',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 45.0,
                    height: 45.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://www.news-medical.net/image.axd?picture=2019%2F4%2FBy_Rido.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              3.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Sarah',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 11.0,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 14.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: MediaQuery.of(context).size.height * 1.0,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 1.0),
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  reverse: true,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 0.0, 140.0),
                        child: wrapWithModel(
                          model: _model.messageBubblesModel1,
                          updateCallback: () => setState(() {}),
                          child: MessageBubblesWidget(
                            mesageText:
                                'Let\'s reconnect Monday and talk about FlutterFlow!',
                            blueBubble: false,
                            showDelivered: false,
                            showTail: true,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.messageBubblesModel2,
                        updateCallback: () => setState(() {}),
                        child: MessageBubblesWidget(
                          mesageText:
                              'That is amazing to hear! You can seriously build some amazing things!',
                          blueBubble: true,
                          showDelivered: false,
                          showTail: true,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.messageBubblesModel3,
                        updateCallback: () => setState(() {}),
                        child: MessageBubblesWidget(
                          mesageText:
                              'I just started and built a really cool app I\'m excited to launch.',
                          blueBubble: false,
                          showDelivered: false,
                          showTail: true,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.messageBubblesModel4,
                        updateCallback: () => setState(() {}),
                        child: MessageBubblesWidget(
                          mesageText: 'How is FlutterFlow going?',
                          blueBubble: true,
                          showDelivered: false,
                          showTail: true,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.messageBubblesModel5,
                        updateCallback: () => setState(() {}),
                        child: MessageBubblesWidget(
                          mesageText: 'I cant recommend it enough!!!',
                          blueBubble: true,
                          showDelivered: false,
                          showTail: false,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.messageBubblesModel6,
                        updateCallback: () => setState(() {}),
                        child: MessageBubblesWidget(
                          mesageText:
                              'Thanks for helping me out the other day.',
                          blueBubble: false,
                          showDelivered: false,
                          showTail: true,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.messageBubblesModel7,
                          updateCallback: () => setState(() {}),
                          child: MessageBubblesWidget(
                            mesageText:
                                'I really didn\'t know where to start building my MVP!',
                            blueBubble: false,
                            showDelivered: false,
                            showTail: false,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10.0,
                        sigmaY: 10.0,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xB3FFFFFF),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.photo_camera,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: FaIcon(
                                  FontAwesomeIcons.appStoreIos,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.textController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 200),
                                            () => setState(() {}),
                                          ),
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.sentences,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            hintText: 'iMessage',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0x7FFFFFFF),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    14.0, 16.0, 24.0, 16.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                lineHeight: 1.0,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Stack(
                                      children: [
                                        if (_model.textController.text !=
                                                null &&
                                            _model.textController.text != '')
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 6.0, 0.0),
                                              child: Icon(
                                                Icons.send_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                        if (_model.textController.text ==
                                                null ||
                                            _model.textController.text == '')
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 6.0, 0.0),
                                              child: Icon(
                                                Icons.mic_none,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 18.0,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFD2D3D8),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                        child: Image.asset(
                          'assets/images/Apps.png',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Container(
                  width: double.infinity,
                  height: 0.5,
                  decoration: BoxDecoration(
                    color: Color(0x809A9A9A),
                  ),
                ),
              ),
              if (FFAppState().messageReaction)
                wrapWithModel(
                  model: _model.messageEmojiModel,
                  updateCallback: () => setState(() {}),
                  child: MessageEmojiWidget(
                    blueBubble: FFAppState().messageFocusColor,
                    messageText: FFAppState().messageFocusText,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
