import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/config/theme/app_theme.dart';
import 'package:tiktok/domain/repositories/video_posts_repository.dart';
import 'package:tiktok/infraestructure/datasources/local_video_datasource_impl.dart';
import 'package:tiktok/infraestructure/repositories/video_posts_repository_impl.dart';
import 'package:tiktok/presentation/providers/discover_provider.dart';
import 'package:tiktok/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPostRepository =
        VideoPostsRepositoryImpl(videosDatasource: LocalVideoDatasourceImpl());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) =>
                DiscoverProvider(videosRepository: VideoPostRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
          title: 'Tiktok',
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          home: DiscoverScreen()),
    );
    // Scaffold
  }
} // MaterialApp
