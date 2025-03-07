import 'dart:io';

void main() {
 final projectDir = Directory.current.path;
  print("\n🚀 Setting up your Flutter project with Sohan's template...\n");

  final directories = [
    // Assets
    '$projectDir/assets/fonts',
    '$projectDir/assets/images',
    '$projectDir/assets/icons',

    // Core
    '$projectDir/lib/core/config',
    '$projectDir/lib/core/di',
    '$projectDir/lib/core/enums',
    '$projectDir/lib/core/error',
    '$projectDir/lib/core/extensions',
    '$projectDir/lib/core/localization',
    '$projectDir/lib/core/network',
    '$projectDir/lib/core/routes',
    '$projectDir/lib/core/storage',
    '$projectDir/lib/core/themes',
    '$projectDir/lib/core/utils',
    '$projectDir/lib/core/utils/device',
    '$projectDir/lib/core/utils/validators',
    '$projectDir/lib/core/widgets',

    // Data
    '$projectDir/lib/data/data_sources',
    '$projectDir/lib/data/data_sources/remote',
    '$projectDir/lib/data/mapper',
    '$projectDir/lib/data/models',
    '$projectDir/lib/data/repositories',

    // Domain
    '$projectDir/lib/domain/entities',
    '$projectDir/lib/domain/repositories',
    '$projectDir/lib/domain/use_cases',

    // Presentation
    '$projectDir/lib/presentation/bindings',
    '$projectDir/lib/presentation/controllers',
    '$projectDir/lib/presentation/screens',
    '$projectDir/lib/presentation/widgets',
  ];

  for (var dir in directories) {
    final directory = Directory(dir);
    if (!directory.existsSync()) {
      directory.createSync(recursive: true);
      print('📂 Created: $dir');
    } else {
      print('✅ Folder already exists: $dir');
    }
  }
 // 2️⃣ Clone files from your GitHub repo
  final repoUrl = 'https://github.com/Sohan-14/sohan_flutter_template.git';
  final tempDir = Directory('$projectDir/temp_template');

  print('\n🔄 Cloning files from template repository...');
  Process.runSync('git', ['clone', '--depth', '1', repoUrl, tempDir.path]);

  // List of files to copy (Modify as per your repo)
  final filesToCopy = [
    'lib/core/config/app_config.dart',
    'lib/core/di/dependency_injection.dart',
    'lib/core/utils/logger.dart',
    'lib/main.dart',
    'pubspec.yaml',
  ];

  for (var filePath in filesToCopy) {
    final sourceFile = File('${tempDir.path}/$filePath');
    final destinationFile = File('$projectDir/$filePath');

    if (sourceFile.existsSync()) {
      if (!destinationFile.existsSync()) {
        sourceFile.copySync(destinationFile.path);
        print('📄 Copied: $filePath');
      } else {
        print('⚠️ Skipped (already exists): $filePath');
      }
    } else {
      print('⚠️ Warning: $filePath not found in template.');
    }
  }

  // 3️⃣ Add dependencies to pubspec.yaml
  final pubspecFile = File('$projectDir/pubspec.yaml');
  if (pubspecFile.existsSync()) {
    var content = pubspecFile.readAsStringSync();

    final dependencies = {
      'get': '^4.6.5',
      'flutter_bloc': '^8.1.3',
      'http': '^0.13.5',
      'dio': '^5.3.2',
    };

    bool updated = false;
    dependencies.forEach((package, version) {
      if (!content.contains('$package:')) {
        content += '\n  $package: $version';
        updated = true;
        print('📦 Added dependency: $package $version');
      }
    });

    if (updated) {
      pubspecFile.writeAsStringSync(content);
    } else {
      print('✅ All dependencies already exist.');
    }
  } else {
    print('❌ pubspec.yaml not found! Make sure you are in a Flutter project.');
    return;
  }

  // 4️⃣ Run flutter pub get
  print('\n🔄 Running flutter pub get...\n');
  Process.runSync('flutter', ['pub', 'get']);
  print('✅ Setup complete! 🎉\n');

  // Cleanup temporary folder
  tempDir.deleteSync(recursive: true);
}
