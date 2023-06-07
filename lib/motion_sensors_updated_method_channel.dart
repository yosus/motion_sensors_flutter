import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'motion_sensors_updated_platform_interface.dart';

/// An implementation of [MotionSensorsUpdatedPlatform] that uses method channels.
class MethodChannelMotionSensorsUpdated extends MotionSensorsUpdatedPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('motion_sensors_updated');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
