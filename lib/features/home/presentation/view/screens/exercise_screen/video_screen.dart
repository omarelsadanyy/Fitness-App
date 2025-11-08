import 'package:fitness/config/di/di.dart';
import 'package:fitness/core/widget/loading_circle.dart';
import 'package:fitness/core/widget/video_widgets/video_section.dart';
import 'package:fitness/features/home/presentation/view_model/exercises_view_model/exercises_cubit.dart';
import 'package:fitness/features/home/presentation/view_model/exercises_view_model/exercises_intent.dart';
import 'package:fitness/features/home/presentation/view_model/exercises_view_model/exercises_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExercisesVideoPlayerScreen extends StatefulWidget {
  final String videoUrl;

  const ExercisesVideoPlayerScreen({super.key, required this.videoUrl});

  @override
  State<ExercisesVideoPlayerScreen> createState() =>
      _ExercisesVideoPlayerScreenState();
}

class _ExercisesVideoPlayerScreenState
    extends State<ExercisesVideoPlayerScreen> {
  YoutubePlayerController? _controller;
  final ExercisesCubit _cubit = getIt<ExercisesCubit>();

  @override
  void initState() {
    super.initState();
    _cubit.doIntent(intent: GetYoutubeIdIntent(videoUrl: widget.videoUrl));
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<ExercisesCubit, ExercisesStates>(
        builder: (context, state) {
          if (state.youtubeIdStatus.isLoading) {
            return const LoadingCircle();
          }

          if (state.youtubeIdStatus.isSuccess) {
            final videoId = state.youtubeIdStatus.data!;
            _controller = YoutubePlayerController(
              initialVideoId: videoId,
              flags: const YoutubePlayerFlags(autoPlay: true),
            );
            return VideoSection(controller: _controller);
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
