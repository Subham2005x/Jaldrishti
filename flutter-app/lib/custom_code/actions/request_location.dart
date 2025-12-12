// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:location/location.dart';
import 'dart:developer' as developer;

Future<void> requestLocation(BuildContext context) async {
  Location location = Location();

  // Check if location services are enabled
  bool serviceEnabled = await location.serviceEnabled();
  developer.log('Location services enabled: $serviceEnabled');

  if (!serviceEnabled) {
    developer.log('Location services disabled, requesting service...');
    serviceEnabled = await location.requestService();

    if (!serviceEnabled) {
      developer.log('User declined to enable location services');
      return;
    }
    developer.log('Location services enabled after request');
  }

  // Check location permissions
  PermissionStatus permissionGranted = await location.hasPermission();
  developer.log('Current permission status: $permissionGranted');

  if (permissionGranted == PermissionStatus.denied) {
    developer.log('Location permission denied, requesting permission...');
    permissionGranted = await location.requestPermission();
    developer.log('Permission status after request: $permissionGranted');

    if (permissionGranted == PermissionStatus.deniedForever) {
      developer.log('Location permission denied forever, stopping');
      return;
    }

    if (permissionGranted != PermissionStatus.granted) {
      developer.log('Location permission not granted, stopping');
      return;
    }
  } else if (permissionGranted == PermissionStatus.deniedForever) {
    developer.log('Location permission denied forever, stopping');
    return;
  }

  developer.log('Location services and permissions are ready');
}
