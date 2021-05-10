import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';

@singleton
class DynamicLinkService {
  Future<void> initDynamicLinks(
    void Function(String path, Map<String, String> queryParameters) callback,
  ) async {
    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    final Uri? deepLink = data?.link;

    if (deepLink != null) {
      callback(deepLink.path, deepLink.queryParameters);
    }

    FirebaseDynamicLinks.instance.onLink(onSuccess: (
      PendingDynamicLinkData? dynamicLink,
    ) async {
      final Uri? deepLink = dynamicLink?.link;

      if (deepLink != null) {
        callback(deepLink.path, deepLink.queryParameters);
      }
    });
  }

  Future<Uri> createDynamicLink({
    required String urlPrefix,
    required String urlLink,
    bool short = false,
  }) async {
    final PackageInfo info = await PackageInfo.fromPlatform();

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: urlPrefix,
      link: Uri.parse(urlLink),
      androidParameters: AndroidParameters(
        packageName: info.packageName,
        minimumVersion: 0,
      ),
      dynamicLinkParametersOptions: DynamicLinkParametersOptions(
        shortDynamicLinkPathLength: ShortDynamicLinkPathLength.short,
      ),
      iosParameters: IosParameters(
        bundleId: info.packageName,
        minimumVersion: '0',
      ),
    );

    if (short) {
      final ShortDynamicLink shortLink = await parameters.buildShortLink();
      return shortLink.shortUrl;
    } else {
      return await parameters.buildUrl();
    }
  }
}
