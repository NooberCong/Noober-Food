// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/src/client.dart';
import 'package:nooberfood/infrastructure/modules/modules.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/spoonacular_api.dart';
import 'package:nooberfood/infrastructure/data_sources/remote_api/i_recipe_api.dart';
import 'package:nooberfood/core/network/network.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/shared_prefs_data_api.dart';
import 'package:nooberfood/infrastructure/data_sources/persistent_data_api/i_persistent_data_api.dart';
import 'package:nooberfood/infrastructure/repositories/recipe_repository.dart';
import 'package:nooberfood/domain/repositories/i_recipe_repository.dart';
import 'package:nooberfood/domain/usecases/user_ingredients.dart';
import 'package:nooberfood/domain/usecases/search_recipes.dart';
import 'package:nooberfood/domain/usecases/user_preferences.dart';
import 'package:nooberfood/domain/usecases/get_random_recipes.dart';
import 'package:nooberfood/domain/usecases/get_recipe_information.dart';
import 'package:nooberfood/domain/usecases/get_search_suggestions.dart';
import 'package:nooberfood/domain/usecases/get_similar_recipes.dart';
import 'package:nooberfood/application/bloc/ingredient_page_bloc/ingredient_page_bloc.dart';
import 'package:nooberfood/application/bloc/search_page_bloc/search_page_bloc.dart';
import 'package:nooberfood/application/bloc/discover_page_bloc/discover_page_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<Client>(() => registerModule.client);
  g.registerLazySingleton<DataConnectionChecker>(
      () => registerModule.dataConnectionChecker);
  g.registerLazySingleton<IRecipeApi>(
      () => SpoonacularApi(network: g<INetwork>(), client: g<Client>()));
  g.registerLazySingleton<Network>(() => Network(g<DataConnectionChecker>()));
  final sharedPreferences = await registerModule.sharedPreferences;
  g.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<IPersistentDataApi>(() =>
      SharedPreferencesDataApi(sharedPreferences: g<SharedPreferences>()));
  g.registerLazySingleton<IRecipeRepository>(() => RecipeRepository(
      api: g<IRecipeApi>(), persistentDataApi: g<IPersistentDataApi>()));
  g.registerLazySingleton<RemoveIngredients>(
      () => RemoveIngredients(g<IRecipeRepository>()));
  g.registerLazySingleton<SearchRecipes>(
      () => SearchRecipes(g<IRecipeRepository>()));
  g.registerLazySingleton<SetUserPreferences>(
      () => SetUserPreferences(g<IRecipeRepository>()));
  g.registerLazySingleton<AddIngredients>(
      () => AddIngredients(g<IRecipeRepository>()));
  g.registerLazySingleton<GetRandomRecipes>(
      () => GetRandomRecipes(g<IRecipeRepository>()));
  g.registerLazySingleton<GetRecipeInformation>(
      () => GetRecipeInformation(g<IRecipeRepository>()));
  g.registerLazySingleton<GetSearchSuggestions>(
      () => GetSearchSuggestions(g<IRecipeRepository>()));
  g.registerLazySingleton<GetSimilarRecipes>(
      () => GetSimilarRecipes(g<IRecipeRepository>()));
  g.registerLazySingleton<GetUserIngredients>(
      () => GetUserIngredients(g<IRecipeRepository>()));
  g.registerLazySingleton<GetUserPreferences>(
      () => GetUserPreferences(g<IRecipeRepository>()));
  g.registerFactory<IngredientPageBloc>(() => IngredientPageBloc(
        getUserIngredients: g<GetUserIngredients>(),
        addIngredients: g<AddIngredients>(),
        removeIngredients: g<RemoveIngredients>(),
      ));
  g.registerFactory<SearchPageBloc>(
      () => SearchPageBloc(searchRecipes: g<SearchRecipes>()));
  g.registerFactory<DiscoverPageBloc>(
      () => DiscoverPageBloc(getRandomRecipes: g<GetRandomRecipes>()));
}

class _$RegisterModule extends RegisterModule {}
