import '/components/message_preview_widget.dart';
import '/components/pinned_message_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Edit',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                ),
              ),
            ],
          ),
          title: Text(
            'Messages',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Inter',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
              child: Icon(
                Icons.add_rounded,
                color: FlutterFlowTheme.of(context).primary,
                size: 22.0,
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    wrapWithModel(
                      model: _model.pinnedMessageModel1,
                      updateCallback: () => setState(() {}),
                      child: PinnedMessageWidget(
                        messageImage:
                            'https://img.freepik.com/free-photo/handsome-man-smiling-happy-face-portrait-close-up_53876-145493.jpg?w=2000',
                        messageTitle: 'Wesley Burnet',
                        isUnread: false,
                        messageContent: 'FlutterFlow 🤯',
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.pinnedMessageModel2,
                        updateCallback: () => setState(() {}),
                        child: PinnedMessageWidget(
                          messageImage:
                              'https://bksdental.com/x/lc-content/uploads/2020/05/Did-Zoom-Meetings-Make-You-Unhappy-with-Your-Smile.jpg',
                          messageTitle: 'Alyssa Buckley',
                          isUnread: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Message');
                    },
                    child: wrapWithModel(
                      model: _model.messagePreviewModel1,
                      updateCallback: () => setState(() {}),
                      child: MessagePreviewWidget(
                        messageTitle: 'Sarah Smith',
                        messageContent:
                            'Let\'s reconnect Monday and talk about FlutterFlow!',
                        messageImage:
                            'https://www.news-medical.net/image.axd?picture=2019%2F4%2FBy_Rido.jpg',
                        isUnread: true,
                        messageTime: '3:49 PM',
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.messagePreviewModel2,
                    updateCallback: () => setState(() {}),
                    child: MessagePreviewWidget(
                      messageTitle: 'Alex Thomas',
                      messageContent: 'Hey man! How was last night? 🕺',
                      messageImage:
                          'https://media.istockphoto.com/id/1029759424/photo/close-up-portrait-of-young-happy-smiling-friendly-man.jpg?s=612x612&w=0&k=20&c=-0RNIhYK1oUkV-iLgXpRhiNQp34O3g83ALazxonMyUY=',
                      isUnread: true,
                      messageTime: '1:31 PM',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.messagePreviewModel3,
                    updateCallback: () => setState(() {}),
                    child: MessagePreviewWidget(
                      messageTitle: 'Piper Phillips',
                      messageContent: 'Haha yeah! ',
                      messageImage:
                          'https://media.licdn.com/dms/image/C4D03AQGYi4SHCrwyDw/profile-displayphoto-shrink_800_800/0/1646677268073?e=2147483647&v=beta&t=jAzM5akU-ZRi6wubdMrYb2royOiTLRyXtRpKZbFCXoc',
                      isUnread: false,
                      messageTime: 'Yesterday',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.messagePreviewModel4,
                    updateCallback: () => setState(() {}),
                    child: MessagePreviewWidget(
                      messageTitle: 'Rohan Bhatia',
                      messageContent:
                          'Can\'t wait to see you next week. Did you make the reservations yet?',
                      messageImage:
                          'https://media.licdn.com/dms/image/C5603AQE85VzST1uy8w/profile-displayphoto-shrink_200_200/0/1622140545111?e=2147483647&v=beta&t=DHe7vWyIWboL-xlpfId7dEtCJ-l-MIg-ZrD198h4BRE',
                      isUnread: false,
                      messageTime: 'Yesterday',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.messagePreviewModel5,
                    updateCallback: () => setState(() {}),
                    child: MessagePreviewWidget(
                      messageTitle: 'Alexandra Williams',
                      messageContent:
                          'FlutterFlow really is the best visual application builder out there 🤯',
                      messageImage:
                          'https://www.dentistryinmillersville.com/blog/wp-content/uploads/2020/11/Smiling_5__1601427118_34772.jpg',
                      isUnread: false,
                      messageTime: 'Sunday',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.messagePreviewModel6,
                    updateCallback: () => setState(() {}),
                    child: MessagePreviewWidget(
                      messageTitle: 'Cade Guzman',
                      messageContent: 'No problem. Let me know if I can help.',
                      messageImage:
                          'https://img.freepik.com/premium-photo/smiling-man-holding-smartphone_107420-20811.jpg?w=2000',
                      isUnread: false,
                      messageTime: 'Sunday',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.messagePreviewModel7,
                    updateCallback: () => setState(() {}),
                    child: MessagePreviewWidget(
                      messageTitle: 'Grace Finley',
                      messageContent: 'Hey can I get some help really quick?',
                      messageImage:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_o8GvNHXndMoW1QhXq6o8kTb8fddzejVJ2g&usqp=CAU',
                      isUnread: false,
                      messageTime: 'Saturday',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
