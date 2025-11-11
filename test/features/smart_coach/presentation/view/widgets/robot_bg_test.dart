import 'package:animate_do/animate_do.dart';
import 'package:fitness/core/constants/assets_manager.dart';
import 'package:fitness/core/l10n/translations/app_localizations.dart';
import 'package:fitness/core/responsive/size_provider.dart';
import 'package:fitness/features/smart_coach/presentation/view/widgets/robot_bg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Widget createWidgetUnderTest() {
    return const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: SizeProvider(
        baseSize: Size(375, 812),
        height: 812,
        width: 375,
        child: Scaffold(
          body: RobotLogo(),
        ),
      ),
    );
  }

  testWidgets("test structure in robot logo", (WidgetTester tester) async {
    await tester.pumpWidget(
      TickerMode(enabled: true, child: createWidgetUnderTest()),
    );

    await tester.pumpAndSettle(const Duration(milliseconds: 900));

    expect(find.byType(FadeInUp), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    final Image imageWidget = tester.widget(find.byType(Image));
    expect(imageWidget.image is AssetImage, true);

    final AssetImage assetImage = imageWidget.image as AssetImage;
    expect(assetImage.assetName, AssetsManager.astron);
  });
}
