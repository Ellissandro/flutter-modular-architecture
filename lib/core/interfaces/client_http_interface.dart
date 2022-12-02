abstract class IClientHttp {
  Future get(String url);
  Future post(String url);
  Future put(String url);
  Future delete(String url);
}
