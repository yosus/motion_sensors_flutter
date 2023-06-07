import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'motion_sensors_updated_method_channel.dart';

abstract class MotionSensorsUpdatedPlatform extends PlatformInterface {
  /// Constructs a MotionSensorsUpdatedPlatform.
  MotionSensorsUpdatedPlatform() : super(token: _token);

  static final Object _token = Object();

  static MotionSensorsUpdatedPlatform _instance = MethodChannelMotionSensorsUpdated();

  /// The default instance of [MotionSensorsUpdatedPlatform] to use.
  ///
  /// Defaults to [MethodChannelMotionSensorsUpdated].
  static MotionSensorsUpdatedPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MotionSensorsUpdatedPlatform] when
  /// they register themselves.
  static set instance(MotionSensorsUpdatedPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
