// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_ui_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authUiServiceHash() => r'765007de6958bdd2d0d5f957f7a87a8c02243b6f';

/// See also [AuthUiService].
@ProviderFor(AuthUiService)
final authUiServiceProvider =
    AsyncNotifierProvider<AuthUiService, UserEntity?>.internal(
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

typedef _$AuthUiService = AsyncNotifier<UserEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
