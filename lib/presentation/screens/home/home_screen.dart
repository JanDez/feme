import 'package:feme/presentation/screens/screens.dart';
import 'package:feme/presentation/widgets/navbar/app_nav.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatelessWidget {
  final _tab1navigatorKey = GlobalKey<NavigatorState>();
  final _tab2navigatorKey = GlobalKey<NavigatorState>();
  final _tab3navigatorKey = GlobalKey<NavigatorState>();
  final _tab4navigatorKey = GlobalKey<NavigatorState>();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentBottomBarScaffold(
      items: [
        PersistentTabItem(
          tab: const TabPage1(),
          icon: Icons.home,
          title: 'Home',
          navigatorkey: _tab1navigatorKey,
        ),
        PersistentTabItem(
          tab: const ClassroomScreen(),
          icon: Icons.search,
          title: 'clases',
          navigatorkey: _tab2navigatorKey,
        ),
        PersistentTabItem(
          tab: const ReportScreen(),
          icon: Icons.person,
          title: 'Profile',
          navigatorkey: _tab3navigatorKey,
        ),
        PersistentTabItem(
          tab: const ProfileScreen(),
          icon: Icons.person,
          title: 'Profile',
          navigatorkey: _tab4navigatorKey,
        ),
      ],
    );
  }
}

class TabPage1 extends StatelessWidget {
  const TabPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(-0.9, 1.0),
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 32.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        'Encantados de tener acá,',
                                        textAlign: TextAlign.start,
                                        //style:  ,// todo ADD STYLE TEXT
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Profesor ',
                                            textAlign: TextAlign.start,
                                            // style: FlutterFlowTheme.of(
                                            //         context)
                                            //     .bodyMedium
                                            //     .override(
                                            //       fontFamily: 'Outfit',
                                            //       fontSize: 32.0,
                                            //       fontWeight:
                                            //           FontWeight.w900,
                                            //     ),
                                          ),
                                          Text(
                                            'Jonathan',
                                            textAlign: TextAlign.start,
                                            // style: FlutterFlowTheme.of(
                                            //         context)
                                            //     .bodyMedium
                                            //     .override(
                                            //       fontFamily: 'Outfit',
                                            //       fontSize: 32.0,
                                            //       fontWeight:
                                            //           FontWeight.w900,
                                            //     ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 5.0,
                                  shape: const CircleBorder(),
                                  child: Container(
                                    width: 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFFF),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color(0xFF103CE7),
                                      ),
                                    ),
                                    child: IconButton(
                                      // borderColor: Colors.transparent,
                                      // borderRadius: 30.0,
                                      // borderWidth: 1.0,
                                      // buttonSize: 0.0,
                                      icon: const Icon(
                                        Icons.notifications,
                                        color: Color(0xFF212121),
                                        size: 0.0,
                                      ),
                                      onPressed: () async {
                                        // if (Navigator.of(context)
                                        //     .canPop()) {
                                        //   context.pop();
                                        // }
                                        // context.pushNamed(
                                        //   'pushNotifications',
                                        // );
                                        // ignore: avoid_print
                                        print('hola');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 24.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsGeometry.infinity,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0x00FAFBF5),
                                      ),
                                      child: const Text(
                                        'Colegio:',
                                        // style:
                                        //     FlutterFlowTheme.of(context)
                                        //         .bodyMedium
                                        //         .override(
                                        //           fontFamily: 'Outfit',
                                        //           fontSize: 16.0,
                                        //         ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: const Text(
                                      'Colegio Santo Tomás de Aquino',
                                      // style: FlutterFlowTheme.of(context)
                                      //     .bodyMedium
                                      //     .override(
                                      //       fontFamily: 'Outfit',
                                      //       fontSize: 16.0,
                                      //     ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
