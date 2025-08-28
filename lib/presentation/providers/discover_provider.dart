import 'package:flutter/material.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videos = [];
  bool initialLoading = true;
  final VideoPostRepository videosRepository;

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    final newVideos = await videosRepository.getTrendingVIdeosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
