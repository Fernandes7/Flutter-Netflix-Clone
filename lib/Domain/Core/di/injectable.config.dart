// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../Application/downloads/downloads_bloc.dart' as _i7;
import '../../../Application/search/search_bloc.dart' as _i8;
import '../../../Infrastructure/downloads/downloadsrepository.dart' as _i4;
import '../../../Infrastructure/search/searchimplementation.dart' as _i6;
import '../../Downlods/models/i_downloadsrepo.dart' as _i3;
import '../../Search/searchservices.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.Downloadsrepository());
    gh.lazySingleton<_i5.Searchservices>(() => _i6.SearchImplementation());
    gh.factory<_i7.DownloadsBloc>(
        () => _i7.DownloadsBloc(gh<_i3.IDownloadsRepo>()));
    gh.factory<_i8.SearchBloc>(() => _i8.SearchBloc(
          gh<_i3.IDownloadsRepo>(),
          gh<_i5.Searchservices>(),
        ));
    return this;
  }
}
