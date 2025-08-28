import 'package:tiktok/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {
  Future<List<VideoPost>> getTrendingVIdeosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
}
