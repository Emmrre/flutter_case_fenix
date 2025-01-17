
import 'package:case_fenix/client/network/builder/network_manager.dart';


class NetworkClient {
  static NetworkManager client() {
    return NetworkManager(
      authToken: null,
      isLog: true,
      isReleaseURL: true,
      releaseBaseURL: "https://api.themoviedb.org/3/",
      testBaseURL: "test api",
    );
  }
}
