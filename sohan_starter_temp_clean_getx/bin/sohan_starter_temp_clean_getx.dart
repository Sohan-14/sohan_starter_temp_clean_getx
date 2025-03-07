import 'package:sohan_starter_temp_clean_getx/sohan_starter_temp_clean_getx.dart' as sohan_starter_temp_clean_getx;
import 'dart:io';

void main(List<String> arguments) {
  print('Hello world: ${sohan_starter_temp_clean_getx.calculate()}!');
  
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
      print('✅ Directory already exists: $dir');
    }
  }
 // 2️⃣ Clone files from your GitHub repo
  final repoUrl = 'https://github.com/Sohan-14/sohan_flutter_template.git';
  final tempDir = Directory('$projectDir/temp_template');

  print('\n🔄 Cloning files from template repository...');
  Process.runSync('git', ['clone', '--depth', '1', repoUrl, tempDir.path]);

  // List of files to copy (Modify as per your repo)
  final filesToCopy = [
    "lib/assets/fonts/.gitkeep",
    "lib/assets/icons/.gitkeep",
    "lib/assets/images/.gitkeep",

    "lib/core/config/app_api_endpoints.dart",
    "lib/core/config/app_constants.dart",
    "lib/core/config/app_dark_colors.dart",
    "lib/core/config/app_icons.dart",
    "lib/core/config/app_images.dart",
    "lib/core/config/app_light_colors.dart",
    "lib/core/config/app_sizes.dart",
    "lib/core/config/app_strings.dart",

    "lib/core/di/app_bindings.dart",

    "lib/core/enums/http_method.dart",

    "lib/core/error/.gitkeep",

    "lib/core/extensions/context_extensions.dart",
    "lib/core/extensions/date_time_extensions.dart",
    "lib/core/extensions/list_extensions.dart",
    "lib/core/extensions/number_extensions.dart",
    "lib/core/extensions/strings_extensions.dart",
    "lib/core/extensions/theme_extensions.dart",
    "lib/core/extensions/widget_extensions.dart",

    "lib/core/localization/bn_bn.dart",
    "lib/core/localization/en_us.dart",
    "lib/core/localization/localization.dart",

    "lib/core/network/network_service.dart",

    "lib/core/routes/app_routes.dart",
    "lib/core/routes/app_screens.dart",

    "lib/core/storage/storage_service.dart",

    "lib/core/themes/app_appbar_theme.dart",
    "lib/core/themes/app_bottom_nav_bar_theme.dart",
    "lib/core/themes/app_bottom_sheet_theme.dart",
    "lib/core/themes/app_card_theme.dart",
    "lib/core/themes/app_check_box_theme.dart",
    "lib/core/themes/app_chip_theme.dart",
    "lib/core/themes/app_dialogue_theme.dart",
    "lib/core/themes/app_elevated_btn_theme.dart",
    "lib/core/themes/app_expansion_tile_theme.dart",
    "lib/core/themes/app_floating_action_bar_theme.dart",
    "lib/core/themes/app_floating_action_bar_theme.dart",
    "lib/core/themes/app_input_decoration_theme.dart",
    "lib/core/themes/app_nav_drawer_theme.dart",
    "lib/core/themes/app_outline_btn_theme.dart",
    "lib/core/themes/app_page_transition_theme.dart",
    "lib/core/themes/app_progress_indicator_theme.dart",
    "lib/core/themes/app_radio_theme.dart",
    "lib/core/themes/app_scroll_bar_theme.dart",
    "lib/core/themes/app_snack_bar_theme.dart",
    "lib/core/themes/app_switch_theme.dart",
    "lib/core/themes/app_tab_bar_theme.dart",
    "lib/core/themes/app_text_btn_theme.dart",
    "lib/core/themes/app_text_theme.dart",
    "lib/core/themes/app_tooltip_theme.dart",
    "lib/core/themes/dark_theme.dart",
    "lib/core/themes/light_theme.dart",
    "lib/core/themes/theme_manager.dart",
    "lib/core/themes/theme.dart",


    "lib/core/utils/device/device_utility.dart",

    "lib/core/utils/validators/app_validation.dart",

    "lib/core/utils/logger_utils.dart",
    "lib/core/utils/network_utils.dart",
    "lib/core/utils/permission_utils.dart",

    "lib/core/widgets/.gitkeep",

    "lib/data/data_sources/remote/remote_data_source_impl.dart",
    "lib/data/data_sources/remote/remote_data_source.dart",

    "lib/data/mapper/sample_mapper.dart",

    "lib/data/models/sample_dto.dart",

    "lib/data/repositories/sample_repository_impl.dart",

    "lib/domain/entities/sample.dart",
    "lib/domain/repositories/sample_repository.dart",
    "lib/domain/use_cases/get_sample_data_use_cases.dart",

    "lib/presentation/bindings/localization_bindings.dart",
    "lib/presentation/bindings/splash_bindings.dart",
    "lib/presentation/bindings/test_bindings.dart",

    "lib/presentation/controllers/localization_controller.dart",
    "lib/presentation/controllers/sample_controller.dart",
    "lib/presentation/controllers/splash_controller.dart",

    "lib/presentation/screens/splash_screen.dart",
    "lib/presentation/screens/test_screen.dart",

    "lib/presentation/widgets/.gitkeep",

    "lib/main.dart",

    "pubspec.yaml",

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

  for (String file in filesToCopy) {
    var templateFile = File('$tempDir/$file');
    var userFile = File('$projectDir/$file');

    if (!userFile.existsSync()) {
      print('Creating missing file: $file');
      userFile.createSync();
    }

    print('Replacing file: $file');
    templateFile.copySync(userFile.path);
  }

  //  Add dependencies to pubspec.yaml
  final pubspecFile = File('$projectDir/pubspec.yaml');
  if (pubspecFile.existsSync()) {
    var content = pubspecFile.readAsStringSync();

    final dependencies = {
      'get': '^4.7.2',
      'get_storage': '^2.1.1',
      'intl': '^0.20.2',
      'connectivity_plus': '^6.1.3',
      'permission_handler': '^11.4.0',
      'logger': '^2.5.0',
      'dio': '^5.8.0+1',
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

  // Run flutter pub get
  print('\n🔄 Running flutter pub get...\n');
  Process.runSync('flutter', ['pub', 'get'], workingDirectory: projectDir);
  print('✅ Setup complete! 🎉\n');

  // Cleanup temporary folder
  tempDir.deleteSync(recursive: true);
}
