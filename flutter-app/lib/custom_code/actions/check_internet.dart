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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
//
// // Automatic FlutterFlow imports
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

/// Returns true if the device has actual internet access.
Future<bool> checkInternet() async {
  // hasInternetAccess performs a DNS reachability check, better than just Wi‑Fi status
  final ok = await InternetConnection().hasInternetAccess;
  return ok;
}
