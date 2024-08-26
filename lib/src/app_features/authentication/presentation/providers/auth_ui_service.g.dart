// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authUiServiceHash() => r'd0a5b41e9381343e9c8524f2bff8aeee68165445';

/// See also [AuthUiService].
@ProviderFor(AuthUiService)
final authUiServiceProvider =
    AsyncNotifierProvider<AuthUiService, UserData?>.internal(
  AuthUiService.new,
  name: r'authUiServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authUiServiceHash,
  dependencies: <ProviderOrFamily>[authenticationRepositoryProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    authenticationRepositoryProvider,
    ...?authenticationRepositoryProvider.allTransitiveDependencies
  },
);

typedef _$AuthUiService = AsyncNotifier<UserData?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
