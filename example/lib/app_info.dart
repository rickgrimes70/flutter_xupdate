import 'dart:convert';

class AppInfo {
  final bool hasUpdate;
  final bool isIgnorable;
  final int versionCode;
  final String versionName;
  final String updateLog;
  final String apkUrl;
  final int apkSize;

  const AppInfo({
    required this.hasUpdate,
    required this.isIgnorable,
    required this.versionCode,
    required this.versionName,
    required this.updateLog,
    required this.apkUrl,
    required this.apkSize,
  });

  Map<String, dynamic> toMap() {
    return {
      'hasUpdate': hasUpdate,
      'isIgnorable': isIgnorable,
      'versionCode': versionCode,
      'versionName': versionName,
      'updateLog': updateLog,
      'apkUrl': apkUrl,
      'apkSize': apkSize,
    };
  }

  factory AppInfo.fromMap(Map<String, dynamic> map) {
    return AppInfo(
      hasUpdate: map['hasUpdate'] as bool? ?? false,
      isIgnorable: map['isIgnorable'] as bool? ?? false,
      versionCode: (map['versionCode'] as num?)?.toInt() ?? 0,
      versionName: map['versionName'] as String? ?? '',
      updateLog: map['updateLog'] as String? ?? '',
      apkUrl: map['apkUrl'] as String? ?? '',
      apkSize: (map['apkSize'] as num?)?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppInfo.fromJson(String source) =>
      AppInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AppInfo(hasUpdate: $hasUpdate, isIgnorable: $isIgnorable, versionCode: $versionCode, versionName: $versionName, updateLog: $updateLog, apkUrl: $apkUrl, apkSize: $apkSize)';
  }
}
