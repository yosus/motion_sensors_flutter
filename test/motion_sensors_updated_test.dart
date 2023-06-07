import 'package:flutter_test/flutter_test.dart';
import 'package:motion_sensors_updated/motion_sensors_updated.dart';
import 'package:motion_sensors_updated/motion_sensors_updated_platform_interface.dart';
import 'package:motion_sensors_updated/motion_sensors_updated_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMotionSensorsUpdatedPlatform
    with MockPlatformInterfaceMixin
    implements MotionSensorsUpdatedPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MotionSensorsUpdatedPlatform initialPlatform = MotionSensorsUpdatedPlatform.instance;

  test('$MethodChannelMotionSensorsUpdated is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMotionSensorsUpdated>());
  });

  test('getPlatformVersion', () async {
    MotionSensorsUpdated motionSensorsUpdatedPlugin = MotionSensorsUpdated();
    MockMotionSensorsUpdatedPlatform fakePlatform = MockMotionSensorsUpdatedPlatform();
    MotionSensorsUpdatedPlatform.instance = fakePlatform;

    expect(await motionSensorsUpdatedPlugin.getPlatformVersion(), '42');
  });
}
