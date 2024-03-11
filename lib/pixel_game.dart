import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:game/levels/level.dart';

class PixelGame extends FlameGame {
  @override
  Color backgroundColor() => Color(0xFF211F30);

  late final CameraComponent cam;
  final world = Level();

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(world: world, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;
    
    addAll([cam, world]);
    return super.onLoad();
  }
}