// TODO: better import syntax?
import {BaseAPIRequestFactory, RequiredError, COLLECTION_FORMATS} from './baseapi';
import {Configuration} from '../configuration';
import {RequestContext, HttpMethod, ResponseContext, HttpFile, HttpInfo} from '../http/http';
import {ObjectSerializer} from '../models/ObjectSerializer';
import {ApiException} from './exception';
import {canConsumeForm, isCodeInRange} from '../util';
import {SecurityAuthentication} from '../auth/auth';


import { ComputeNutrition200Response } from '../models/ComputeNutrition200Response';
import { RetrieveRecipeInformation200Response } from '../models/RetrieveRecipeInformation200Response';
import { SearchDrinks200Response } from '../models/SearchDrinks200Response';
import { SearchRecipes200Response } from '../models/SearchRecipes200Response';
import { SearchRestaurants200Response } from '../models/SearchRestaurants200Response';

/**
 * no description
 */
export class FoodApiRequestFactory extends BaseAPIRequestFactory {

    /**
     * Compute detailed nutritional information for a given recipe (list of ingredients). The API will return the nutritional information for each ingredient, as well as the total nutritional content for the entire recipe. Aside from macro and micro nutrients, the API also returns flavanoid information and food properties such as glycemic index, glycemic load, and inflammation score.
     * Compute Nutrition
     * @param ingredients A comma-separated list of the ingredients of the recipe.
     * @param servings The number of servings the ingredients make. Nutrition is computed per serving.
     * @param reduceOils If there is oil in the ingredients, e.g. 3 tablespoons olive oil but they are used for frying, not all of the oil is consumed and therefore should not be added to the computed nutrition. In this case set reduce-oils to true.
     */
    public async computeNutrition(ingredients: string, servings?: number, reduceOils?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'ingredients' is not null or undefined
        if (ingredients === null || ingredients === undefined) {
            throw new RequiredError("FoodApi", "computeNutrition", "ingredients");
        }




        // Path Params
        const localVarPath = '/compute-nutrition';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (ingredients !== undefined) {
            requestContext.setQueryParam("ingredients", ObjectSerializer.serialize(ingredients, "string", ""));
        }

        // Query Params
        if (servings !== undefined) {
            requestContext.setQueryParam("servings", ObjectSerializer.serialize(servings, "number", "int32"));
        }

        // Query Params
        if (reduceOils !== undefined) {
            requestContext.setQueryParam("reduce-oils", ObjectSerializer.serialize(reduceOils, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Get detailed recipe information such as dietary properties, macro and micro nutrients, used ingredients and their amounts, and more.
     * Retrieve Recipe Information
     * @param id The id of the recipe to retrieve.
     * @param addWinePairing Whether to pair a wine to the recipe.
     */
    public async retrieveRecipeInformation(id: number, addWinePairing?: boolean, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'id' is not null or undefined
        if (id === null || id === undefined) {
            throw new RequiredError("FoodApi", "retrieveRecipeInformation", "id");
        }



        // Path Params
        const localVarPath = '/retrieve-recipe';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (id !== undefined) {
            requestContext.setQueryParam("id", ObjectSerializer.serialize(id, "number", "int32"));
        }

        // Query Params
        if (addWinePairing !== undefined) {
            requestContext.setQueryParam("add-wine-pairing", ObjectSerializer.serialize(addWinePairing, "boolean", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search for drinks by title, ingredients, flavor, type of glass, alcohol content, and more.
     * Search Drinks
     * @param query The search query.
     * @param glassTypes A comma-separated list (interpreted as OR) of glass types that the drink should be served in.
     * @param flavors A comma-separated list (interpreted as AND) of dominant flavors in the drink.
     * @param diet The diet the drink must adhere to. One of the following: paleo,primal,grain-free,vegan,vegetarian.
     * @param includeIngredients A comma-separated list of ingredients that should/must be used in the drinks.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the drinks must not contain.
     * @param minCalories The minimum amount of calories the drink must have per serving.
     * @param maxCalories The maximum amount of calories the drink can have per serving.
     * @param minCarbs The minimum amount of carbohydrates in grams the drink must have per serving.
     * @param maxCarbs The maximum amount of carbohydrates in grams the drink can have per serving.
     * @param minProtein The minimum amount of protein in grams the drink must have per serving.
     * @param maxProtein The maximum amount of protein in grams the drink can have per serving.
     * @param minFat The minimum amount of fat in grams the drink must have per serving.
     * @param maxFat The maximum amount of fat in grams the drink can have per serving.
     * @param minAlcoholPercent The minimum alcohol percentage the drink must have.
     * @param maxAlcoholPercent The maximum alcohol percentage the drink can have.
     * @param minCaffeine The minimum amount of caffeine in milligrams the drink must have per serving.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the drink can have per serving.
     * @param sort The attribute by which to sort the drinks.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of drinks to skip, between 0 and 90.
     * @param number The number of drinks, between 1 and 10.
     */
    public async searchDrinks(query?: string, glassTypes?: string, flavors?: string, diet?: string, includeIngredients?: string, excludeIngredients?: string, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minAlcoholPercent?: number, maxAlcoholPercent?: number, minCaffeine?: number, maxCaffeine?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;























        // Path Params
        const localVarPath = '/search-drinks';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (glassTypes !== undefined) {
            requestContext.setQueryParam("glass-types", ObjectSerializer.serialize(glassTypes, "string", ""));
        }

        // Query Params
        if (flavors !== undefined) {
            requestContext.setQueryParam("flavors", ObjectSerializer.serialize(flavors, "string", ""));
        }

        // Query Params
        if (diet !== undefined) {
            requestContext.setQueryParam("diet", ObjectSerializer.serialize(diet, "string", ""));
        }

        // Query Params
        if (includeIngredients !== undefined) {
            requestContext.setQueryParam("include-ingredients", ObjectSerializer.serialize(includeIngredients, "string", ""));
        }

        // Query Params
        if (excludeIngredients !== undefined) {
            requestContext.setQueryParam("exclude-ingredients", ObjectSerializer.serialize(excludeIngredients, "string", ""));
        }

        // Query Params
        if (minCalories !== undefined) {
            requestContext.setQueryParam("min-calories", ObjectSerializer.serialize(minCalories, "number", "double"));
        }

        // Query Params
        if (maxCalories !== undefined) {
            requestContext.setQueryParam("max-calories", ObjectSerializer.serialize(maxCalories, "number", "double"));
        }

        // Query Params
        if (minCarbs !== undefined) {
            requestContext.setQueryParam("min-carbs", ObjectSerializer.serialize(minCarbs, "number", "double"));
        }

        // Query Params
        if (maxCarbs !== undefined) {
            requestContext.setQueryParam("max-carbs", ObjectSerializer.serialize(maxCarbs, "number", "double"));
        }

        // Query Params
        if (minProtein !== undefined) {
            requestContext.setQueryParam("min-protein", ObjectSerializer.serialize(minProtein, "number", "double"));
        }

        // Query Params
        if (maxProtein !== undefined) {
            requestContext.setQueryParam("max-protein", ObjectSerializer.serialize(maxProtein, "number", "double"));
        }

        // Query Params
        if (minFat !== undefined) {
            requestContext.setQueryParam("min-fat", ObjectSerializer.serialize(minFat, "number", "double"));
        }

        // Query Params
        if (maxFat !== undefined) {
            requestContext.setQueryParam("max-fat", ObjectSerializer.serialize(maxFat, "number", "double"));
        }

        // Query Params
        if (minAlcoholPercent !== undefined) {
            requestContext.setQueryParam("min-alcohol-percent", ObjectSerializer.serialize(minAlcoholPercent, "number", "double"));
        }

        // Query Params
        if (maxAlcoholPercent !== undefined) {
            requestContext.setQueryParam("max-alcohol-percent", ObjectSerializer.serialize(maxAlcoholPercent, "number", "double"));
        }

        // Query Params
        if (minCaffeine !== undefined) {
            requestContext.setQueryParam("min-caffeine", ObjectSerializer.serialize(minCaffeine, "number", "double"));
        }

        // Query Params
        if (maxCaffeine !== undefined) {
            requestContext.setQueryParam("max-caffeine", ObjectSerializer.serialize(maxCaffeine, "number", "double"));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }

        // Query Params
        if (sortDirection !== undefined) {
            requestContext.setQueryParam("sort-direction", ObjectSerializer.serialize(sortDirection, "string", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", "int32"));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", "int32"));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search and filter thousands of recipes with natural language, e.g. pasta recipes without mushrooms but with truffles. You can filter by ingredients, diet, cuisine, meal type, macro and micro nutrition, intolerances, and much more.
     * Search Recipes
     * @param query The search query.
     * @param cuisines The cuisine(s) of the recipes. One or more, comma-separated (will be interpreted as \&#39;OR\&#39;).
     * @param excludeCuisines The cuisine(s) the recipes must not match. One or more, comma-separated (will be interpreted as \&#39;AND\&#39;).
     * @param mealType The type of the recipe, one of: main course,side dish,dessert,appetizer,salad,bread,breakfast,soup,beverage,sauce,drink.
     * @param diet The diet the recipes must adhere to. One of the following: paleo,primal,grain-free,pescetarian,lacto vegetarian,ovo vegetarian,vegan,vegetarian.
     * @param intolerances A comma-separated list of intolerances. All recipes returned must not contain ingredients that are not suitable for people with the intolerances entered.
     * @param equipment The equipment required. Multiple values will be interpreted as \&#39;OR\&#39;.
     * @param includeIngredients A comma-separated list of ingredients that should/must be used in the recipes.
     * @param excludeIngredients A comma-separated list of ingredients or ingredient types that the recipes must not contain.
     * @param fillIngredients Add information about the ingredients and whether they are used or missing in relation to the query.
     * @param addRecipeInformation If set to true, you get more information about the recipes returned.
     * @param maxTime The maximum time in minutes it should take to prepare and cook the recipe.
     * @param minServings The minimum amount of servings the recipe is for.
     * @param maxServings The maximum amount of servings the recipe is for.
     * @param minCalories The minimum amount of calories the recipe must have per serving.
     * @param maxCalories The maximum amount of calories the recipe can have per serving.
     * @param minCarbs The minimum amount of carbohydrates in grams the recipe must have per serving.
     * @param maxCarbs The maximum amount of carbohydrates in grams the recipe can have per serving.
     * @param minProtein The minimum amount of protein in grams the recipe must have per serving.
     * @param maxProtein The maximum amount of protein in grams the recipe can have per serving.
     * @param minFat The minimum amount of fat in grams the recipe must have per serving.
     * @param maxFat The maximum amount of fat in grams the recipe can have per serving.
     * @param minSugar The minimum amount of sugar in grams the recipe must have per serving.
     * @param maxSugar The maximum amount of sugar in grams the recipe can have per serving.
     * @param minFiber The minimum amount of fiber in grams the recipe must have per serving.
     * @param maxFiber The maximum amount of fiber in grams the recipe can have per serving.
     * @param minFolate The minimum amount of folate in micrograms the recipe must have per serving.
     * @param maxFolate The maximum amount of folate in micrograms the recipe can have per serving.
     * @param minFolicAcid The minimum amount of folic acid in micrograms the recipe must have per serving.
     * @param maxFolicAcid The maximum amount of folic acid in micrograms the recipe can have per serving.
     * @param minIodine The minimum amount of iodine in micrograms the recipe must have per serving.
     * @param maxIodine The maximum amount of iodine in micrograms the recipe can have per serving.
     * @param minIron The minimum amount of iron in milligrams the recipe must have per serving.
     * @param maxIron The maximum amount of iron in milligrams the recipe can have per serving.
     * @param minZinc The minimum amount of zinc in milligrams the recipe must have per serving.
     * @param maxZinc The maximum amount of zinc in milligrams the recipe can have per serving.
     * @param minMagnesium The minimum amount of magnesium in milligrams the recipe must have per serving.
     * @param maxMagnesium The maximum amount of magnesium in milligrams the recipe can have per serving.
     * @param minManganese The minimum amount of manganese in milligrams the recipe must have per serving.
     * @param maxManganese The maximum amount of manganese in milligrams the recipe can have per serving.
     * @param minPhosphorus The minimum amount of phosphorus in milligrams the recipe must have per serving.
     * @param maxPhosphorus The maximum amount of phosphorus in milligrams the recipe can have per serving.
     * @param minPotassium The minimum amount of potassium in milligrams the recipe must have per serving.
     * @param maxPotassium The maximum amount of potassium in milligrams the recipe can have per serving.
     * @param minSodium The minimum amount of sodium in milligrams the recipe must have per serving.
     * @param maxSodium The maximum amount of sodium in milligrams the recipe can have per serving.
     * @param minSelenium The minimum amount of selenium in micrograms the recipe must have per serving.
     * @param maxSelenium The maximum amount of selenium in micrograms the recipe can have per serving.
     * @param minCopper The minimum amount of copper in milligrams the recipe must have per serving.
     * @param maxCopper The maximum amount of copper in milligrams the recipe can have per serving.
     * @param minCalcium The minimum amount of calcium in milligrams the recipe must have per serving.
     * @param maxCalcium The maximum amount of calcium in milligrams the recipe can have per serving.
     * @param minCholine The minimum amount of choline in milligrams the recipe must have per serving.
     * @param maxCholine The maximum amount of choline in milligrams the recipe can have per serving.
     * @param minCholesterol The minimum amount of cholesterol in milligrams the recipe must have per serving.
     * @param maxCholesterol The maximum amount of cholesterol in milligrams the recipe can have per serving.
     * @param minFluoride The minimum amount of fluoride in milligrams the recipe must have per serving.
     * @param maxFluoride The maximum amount of fluoride in milligrams the recipe can have per serving.
     * @param minAlcohol The minimum amount of alcohol in grams the recipe must have per serving.
     * @param maxAlcohol The maximum amount of alcohol in grams the recipe can have per serving.
     * @param minCaffeine The minimum amount of caffeine in milligrams the recipe must have per serving.
     * @param maxCaffeine The maximum amount of caffeine in milligrams the recipe can have per serving.
     * @param minSaturatedFat The minimum amount of saturated fat in grams the recipe must have per serving.
     * @param maxSaturatedFat The maximum amount of saturated fat in grams the recipe can have per serving.
     * @param minVitaminA The minimum amount of Vitamin A in IU the recipe must have per serving.
     * @param maxVitaminA The maximum amount of Vitamin A in IU the recipe can have per serving.
     * @param minVitaminC The minimum amount of Vitamin C in milligrams the recipe must have per serving.
     * @param maxVitaminC The maximum amount of Vitamin C in milligrams the recipe can have per serving.
     * @param minVitaminD The minimum amount of Vitamin D in micrograms the recipe must have per serving.
     * @param maxVitaminD The maximum amount of Vitamin D in micrograms the recipe can have per serving.
     * @param minVitaminE The minimum amount of Vitamin E in milligrams the recipe must have per serving.
     * @param maxVitaminE The maximum amount of Vitamin E in milligrams the recipe can have per serving.
     * @param minVitaminK The minimum amount of Vitamin K in micrograms the recipe must have per serving.
     * @param maxVitaminK The maximum amount of Vitamin K in micrograms the recipe can have per serving.
     * @param minVitaminB1 The minimum amount of Vitamin B1 in milligrams the recipe must have per serving.
     * @param maxVitaminB1 The maximum amount of Vitamin B1 in milligrams the recipe can have per serving.
     * @param minVitaminB2 The minimum amount of Vitamin B2 in milligrams the recipe must have per serving.
     * @param maxVitaminB2 The maximum amount of Vitamin B2 in milligrams the recipe can have per serving.
     * @param minVitaminB3 The minimum amount of Vitamin B3 in milligrams the recipe must have per serving.
     * @param maxVitaminB3 The maximum amount of Vitamin B3 in milligrams the recipe can have per serving.
     * @param minVitaminB5 The minimum amount of Vitamin B5 in milligrams the recipe must have per serving.
     * @param maxVitaminB5 The maximum amount of Vitamin B5 in milligrams the recipe can have per serving.
     * @param minVitaminB6 The minimum amount of Vitamin B6 in milligrams the recipe must have per serving.
     * @param maxVitaminB6 The maximum amount of Vitamin B6 in milligrams the recipe can have per serving.
     * @param minVitaminB12 The minimum amount of Vitamin B12 in milligrams the recipe must have per serving.
     * @param maxVitaminB12 The maximum amount of Vitamin B12 in milligrams the recipe can have per serving.
     * @param sort The strategy to sort recipes by.
     * @param sortDirection Whether to sort ascending or descending (ASC or DESC).
     * @param offset The number of recipes to skip, between 0 and 900.
     * @param number The number of recipes, between 1 and 100.
     */
    public async searchRecipes(query?: string, cuisines?: string, excludeCuisines?: string, mealType?: string, diet?: string, intolerances?: string, equipment?: string, includeIngredients?: string, excludeIngredients?: string, fillIngredients?: boolean, addRecipeInformation?: boolean, maxTime?: number, minServings?: number, maxServings?: number, minCalories?: number, maxCalories?: number, minCarbs?: number, maxCarbs?: number, minProtein?: number, maxProtein?: number, minFat?: number, maxFat?: number, minSugar?: number, maxSugar?: number, minFiber?: number, maxFiber?: number, minFolate?: number, maxFolate?: number, minFolicAcid?: number, maxFolicAcid?: number, minIodine?: number, maxIodine?: number, minIron?: number, maxIron?: number, minZinc?: number, maxZinc?: number, minMagnesium?: number, maxMagnesium?: number, minManganese?: number, maxManganese?: number, minPhosphorus?: number, maxPhosphorus?: number, minPotassium?: number, maxPotassium?: number, minSodium?: number, maxSodium?: number, minSelenium?: number, maxSelenium?: number, minCopper?: number, maxCopper?: number, minCalcium?: number, maxCalcium?: number, minCholine?: number, maxCholine?: number, minCholesterol?: number, maxCholesterol?: number, minFluoride?: number, maxFluoride?: number, minAlcohol?: number, maxAlcohol?: number, minCaffeine?: number, maxCaffeine?: number, minSaturatedFat?: number, maxSaturatedFat?: number, minVitaminA?: number, maxVitaminA?: number, minVitaminC?: number, maxVitaminC?: number, minVitaminD?: number, maxVitaminD?: number, minVitaminE?: number, maxVitaminE?: number, minVitaminK?: number, maxVitaminK?: number, minVitaminB1?: number, maxVitaminB1?: number, minVitaminB2?: number, maxVitaminB2?: number, minVitaminB3?: number, maxVitaminB3?: number, minVitaminB5?: number, maxVitaminB5?: number, minVitaminB6?: number, maxVitaminB6?: number, minVitaminB12?: number, maxVitaminB12?: number, sort?: string, sortDirection?: string, offset?: number, number?: number, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;



























































































        // Path Params
        const localVarPath = '/search-recipes';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (cuisines !== undefined) {
            requestContext.setQueryParam("cuisines", ObjectSerializer.serialize(cuisines, "string", ""));
        }

        // Query Params
        if (excludeCuisines !== undefined) {
            requestContext.setQueryParam("exclude-cuisines", ObjectSerializer.serialize(excludeCuisines, "string", ""));
        }

        // Query Params
        if (mealType !== undefined) {
            requestContext.setQueryParam("meal-type", ObjectSerializer.serialize(mealType, "string", ""));
        }

        // Query Params
        if (diet !== undefined) {
            requestContext.setQueryParam("diet", ObjectSerializer.serialize(diet, "string", ""));
        }

        // Query Params
        if (intolerances !== undefined) {
            requestContext.setQueryParam("intolerances", ObjectSerializer.serialize(intolerances, "string", ""));
        }

        // Query Params
        if (equipment !== undefined) {
            requestContext.setQueryParam("equipment", ObjectSerializer.serialize(equipment, "string", ""));
        }

        // Query Params
        if (includeIngredients !== undefined) {
            requestContext.setQueryParam("include-ingredients", ObjectSerializer.serialize(includeIngredients, "string", ""));
        }

        // Query Params
        if (excludeIngredients !== undefined) {
            requestContext.setQueryParam("exclude-ingredients", ObjectSerializer.serialize(excludeIngredients, "string", ""));
        }

        // Query Params
        if (fillIngredients !== undefined) {
            requestContext.setQueryParam("fill-ingredients", ObjectSerializer.serialize(fillIngredients, "boolean", ""));
        }

        // Query Params
        if (addRecipeInformation !== undefined) {
            requestContext.setQueryParam("add-recipe-information", ObjectSerializer.serialize(addRecipeInformation, "boolean", ""));
        }

        // Query Params
        if (maxTime !== undefined) {
            requestContext.setQueryParam("max-time", ObjectSerializer.serialize(maxTime, "number", "int32"));
        }

        // Query Params
        if (minServings !== undefined) {
            requestContext.setQueryParam("min-servings", ObjectSerializer.serialize(minServings, "number", "int32"));
        }

        // Query Params
        if (maxServings !== undefined) {
            requestContext.setQueryParam("max-servings", ObjectSerializer.serialize(maxServings, "number", "int32"));
        }

        // Query Params
        if (minCalories !== undefined) {
            requestContext.setQueryParam("min-calories", ObjectSerializer.serialize(minCalories, "number", "double"));
        }

        // Query Params
        if (maxCalories !== undefined) {
            requestContext.setQueryParam("max-calories", ObjectSerializer.serialize(maxCalories, "number", "double"));
        }

        // Query Params
        if (minCarbs !== undefined) {
            requestContext.setQueryParam("min-carbs", ObjectSerializer.serialize(minCarbs, "number", "double"));
        }

        // Query Params
        if (maxCarbs !== undefined) {
            requestContext.setQueryParam("max-carbs", ObjectSerializer.serialize(maxCarbs, "number", "double"));
        }

        // Query Params
        if (minProtein !== undefined) {
            requestContext.setQueryParam("min-protein", ObjectSerializer.serialize(minProtein, "number", "double"));
        }

        // Query Params
        if (maxProtein !== undefined) {
            requestContext.setQueryParam("max-protein", ObjectSerializer.serialize(maxProtein, "number", "double"));
        }

        // Query Params
        if (minFat !== undefined) {
            requestContext.setQueryParam("min-fat", ObjectSerializer.serialize(minFat, "number", "double"));
        }

        // Query Params
        if (maxFat !== undefined) {
            requestContext.setQueryParam("max-fat", ObjectSerializer.serialize(maxFat, "number", "double"));
        }

        // Query Params
        if (minSugar !== undefined) {
            requestContext.setQueryParam("min-sugar", ObjectSerializer.serialize(minSugar, "number", "double"));
        }

        // Query Params
        if (maxSugar !== undefined) {
            requestContext.setQueryParam("max-sugar", ObjectSerializer.serialize(maxSugar, "number", "double"));
        }

        // Query Params
        if (minFiber !== undefined) {
            requestContext.setQueryParam("min-fiber", ObjectSerializer.serialize(minFiber, "number", "double"));
        }

        // Query Params
        if (maxFiber !== undefined) {
            requestContext.setQueryParam("max-fiber", ObjectSerializer.serialize(maxFiber, "number", "double"));
        }

        // Query Params
        if (minFolate !== undefined) {
            requestContext.setQueryParam("min-folate", ObjectSerializer.serialize(minFolate, "number", "double"));
        }

        // Query Params
        if (maxFolate !== undefined) {
            requestContext.setQueryParam("max-folate", ObjectSerializer.serialize(maxFolate, "number", "double"));
        }

        // Query Params
        if (minFolicAcid !== undefined) {
            requestContext.setQueryParam("min-folic-acid", ObjectSerializer.serialize(minFolicAcid, "number", "double"));
        }

        // Query Params
        if (maxFolicAcid !== undefined) {
            requestContext.setQueryParam("max-folic-acid", ObjectSerializer.serialize(maxFolicAcid, "number", "double"));
        }

        // Query Params
        if (minIodine !== undefined) {
            requestContext.setQueryParam("min-iodine", ObjectSerializer.serialize(minIodine, "number", "double"));
        }

        // Query Params
        if (maxIodine !== undefined) {
            requestContext.setQueryParam("max-iodine", ObjectSerializer.serialize(maxIodine, "number", "double"));
        }

        // Query Params
        if (minIron !== undefined) {
            requestContext.setQueryParam("min-iron", ObjectSerializer.serialize(minIron, "number", "double"));
        }

        // Query Params
        if (maxIron !== undefined) {
            requestContext.setQueryParam("max-iron", ObjectSerializer.serialize(maxIron, "number", "double"));
        }

        // Query Params
        if (minZinc !== undefined) {
            requestContext.setQueryParam("min-zinc", ObjectSerializer.serialize(minZinc, "number", "double"));
        }

        // Query Params
        if (maxZinc !== undefined) {
            requestContext.setQueryParam("max-zinc", ObjectSerializer.serialize(maxZinc, "number", "double"));
        }

        // Query Params
        if (minMagnesium !== undefined) {
            requestContext.setQueryParam("min-magnesium", ObjectSerializer.serialize(minMagnesium, "number", "double"));
        }

        // Query Params
        if (maxMagnesium !== undefined) {
            requestContext.setQueryParam("max-magnesium", ObjectSerializer.serialize(maxMagnesium, "number", "double"));
        }

        // Query Params
        if (minManganese !== undefined) {
            requestContext.setQueryParam("min-manganese", ObjectSerializer.serialize(minManganese, "number", "double"));
        }

        // Query Params
        if (maxManganese !== undefined) {
            requestContext.setQueryParam("max-manganese", ObjectSerializer.serialize(maxManganese, "number", "double"));
        }

        // Query Params
        if (minPhosphorus !== undefined) {
            requestContext.setQueryParam("min-phosphorus", ObjectSerializer.serialize(minPhosphorus, "number", "double"));
        }

        // Query Params
        if (maxPhosphorus !== undefined) {
            requestContext.setQueryParam("max-phosphorus", ObjectSerializer.serialize(maxPhosphorus, "number", "double"));
        }

        // Query Params
        if (minPotassium !== undefined) {
            requestContext.setQueryParam("min-potassium", ObjectSerializer.serialize(minPotassium, "number", "double"));
        }

        // Query Params
        if (maxPotassium !== undefined) {
            requestContext.setQueryParam("max-potassium", ObjectSerializer.serialize(maxPotassium, "number", "double"));
        }

        // Query Params
        if (minSodium !== undefined) {
            requestContext.setQueryParam("min-sodium", ObjectSerializer.serialize(minSodium, "number", "double"));
        }

        // Query Params
        if (maxSodium !== undefined) {
            requestContext.setQueryParam("max-sodium", ObjectSerializer.serialize(maxSodium, "number", "double"));
        }

        // Query Params
        if (minSelenium !== undefined) {
            requestContext.setQueryParam("min-selenium", ObjectSerializer.serialize(minSelenium, "number", "double"));
        }

        // Query Params
        if (maxSelenium !== undefined) {
            requestContext.setQueryParam("max-selenium", ObjectSerializer.serialize(maxSelenium, "number", "double"));
        }

        // Query Params
        if (minCopper !== undefined) {
            requestContext.setQueryParam("min-copper", ObjectSerializer.serialize(minCopper, "number", "double"));
        }

        // Query Params
        if (maxCopper !== undefined) {
            requestContext.setQueryParam("max-copper", ObjectSerializer.serialize(maxCopper, "number", "double"));
        }

        // Query Params
        if (minCalcium !== undefined) {
            requestContext.setQueryParam("min-calcium", ObjectSerializer.serialize(minCalcium, "number", "double"));
        }

        // Query Params
        if (maxCalcium !== undefined) {
            requestContext.setQueryParam("max-calcium", ObjectSerializer.serialize(maxCalcium, "number", "double"));
        }

        // Query Params
        if (minCholine !== undefined) {
            requestContext.setQueryParam("min-choline", ObjectSerializer.serialize(minCholine, "number", "double"));
        }

        // Query Params
        if (maxCholine !== undefined) {
            requestContext.setQueryParam("max-choline", ObjectSerializer.serialize(maxCholine, "number", "double"));
        }

        // Query Params
        if (minCholesterol !== undefined) {
            requestContext.setQueryParam("min-cholesterol", ObjectSerializer.serialize(minCholesterol, "number", "double"));
        }

        // Query Params
        if (maxCholesterol !== undefined) {
            requestContext.setQueryParam("max-cholesterol", ObjectSerializer.serialize(maxCholesterol, "number", "double"));
        }

        // Query Params
        if (minFluoride !== undefined) {
            requestContext.setQueryParam("min-fluoride", ObjectSerializer.serialize(minFluoride, "number", "double"));
        }

        // Query Params
        if (maxFluoride !== undefined) {
            requestContext.setQueryParam("max-fluoride", ObjectSerializer.serialize(maxFluoride, "number", "double"));
        }

        // Query Params
        if (minAlcohol !== undefined) {
            requestContext.setQueryParam("min-alcohol", ObjectSerializer.serialize(minAlcohol, "number", "double"));
        }

        // Query Params
        if (maxAlcohol !== undefined) {
            requestContext.setQueryParam("max-alcohol", ObjectSerializer.serialize(maxAlcohol, "number", "double"));
        }

        // Query Params
        if (minCaffeine !== undefined) {
            requestContext.setQueryParam("min-caffeine", ObjectSerializer.serialize(minCaffeine, "number", "double"));
        }

        // Query Params
        if (maxCaffeine !== undefined) {
            requestContext.setQueryParam("max-caffeine", ObjectSerializer.serialize(maxCaffeine, "number", "double"));
        }

        // Query Params
        if (minSaturatedFat !== undefined) {
            requestContext.setQueryParam("min-saturated-fat", ObjectSerializer.serialize(minSaturatedFat, "number", "double"));
        }

        // Query Params
        if (maxSaturatedFat !== undefined) {
            requestContext.setQueryParam("max-saturated-fat", ObjectSerializer.serialize(maxSaturatedFat, "number", "double"));
        }

        // Query Params
        if (minVitaminA !== undefined) {
            requestContext.setQueryParam("min-vitamin-a", ObjectSerializer.serialize(minVitaminA, "number", "double"));
        }

        // Query Params
        if (maxVitaminA !== undefined) {
            requestContext.setQueryParam("max-vitamin-a", ObjectSerializer.serialize(maxVitaminA, "number", "double"));
        }

        // Query Params
        if (minVitaminC !== undefined) {
            requestContext.setQueryParam("min-vitamin-c", ObjectSerializer.serialize(minVitaminC, "number", "double"));
        }

        // Query Params
        if (maxVitaminC !== undefined) {
            requestContext.setQueryParam("max-vitamin-c", ObjectSerializer.serialize(maxVitaminC, "number", "double"));
        }

        // Query Params
        if (minVitaminD !== undefined) {
            requestContext.setQueryParam("min-vitamin-d", ObjectSerializer.serialize(minVitaminD, "number", "double"));
        }

        // Query Params
        if (maxVitaminD !== undefined) {
            requestContext.setQueryParam("max-vitamin-d", ObjectSerializer.serialize(maxVitaminD, "number", "double"));
        }

        // Query Params
        if (minVitaminE !== undefined) {
            requestContext.setQueryParam("min-vitamin-e", ObjectSerializer.serialize(minVitaminE, "number", "double"));
        }

        // Query Params
        if (maxVitaminE !== undefined) {
            requestContext.setQueryParam("max-vitamin-e", ObjectSerializer.serialize(maxVitaminE, "number", "double"));
        }

        // Query Params
        if (minVitaminK !== undefined) {
            requestContext.setQueryParam("min-vitamin-k", ObjectSerializer.serialize(minVitaminK, "number", "double"));
        }

        // Query Params
        if (maxVitaminK !== undefined) {
            requestContext.setQueryParam("max-vitamin-k", ObjectSerializer.serialize(maxVitaminK, "number", "double"));
        }

        // Query Params
        if (minVitaminB1 !== undefined) {
            requestContext.setQueryParam("min-vitamin-b1", ObjectSerializer.serialize(minVitaminB1, "number", "double"));
        }

        // Query Params
        if (maxVitaminB1 !== undefined) {
            requestContext.setQueryParam("max-vitamin-b1", ObjectSerializer.serialize(maxVitaminB1, "number", "double"));
        }

        // Query Params
        if (minVitaminB2 !== undefined) {
            requestContext.setQueryParam("min-vitamin-b2", ObjectSerializer.serialize(minVitaminB2, "number", "double"));
        }

        // Query Params
        if (maxVitaminB2 !== undefined) {
            requestContext.setQueryParam("max-vitamin-b2", ObjectSerializer.serialize(maxVitaminB2, "number", "double"));
        }

        // Query Params
        if (minVitaminB3 !== undefined) {
            requestContext.setQueryParam("min-vitamin-b3", ObjectSerializer.serialize(minVitaminB3, "number", "double"));
        }

        // Query Params
        if (maxVitaminB3 !== undefined) {
            requestContext.setQueryParam("max-vitamin-b3", ObjectSerializer.serialize(maxVitaminB3, "number", "double"));
        }

        // Query Params
        if (minVitaminB5 !== undefined) {
            requestContext.setQueryParam("min-vitamin-b5", ObjectSerializer.serialize(minVitaminB5, "number", "double"));
        }

        // Query Params
        if (maxVitaminB5 !== undefined) {
            requestContext.setQueryParam("max-vitamin-b5", ObjectSerializer.serialize(maxVitaminB5, "number", "double"));
        }

        // Query Params
        if (minVitaminB6 !== undefined) {
            requestContext.setQueryParam("min-vitamin-b6", ObjectSerializer.serialize(minVitaminB6, "number", "double"));
        }

        // Query Params
        if (maxVitaminB6 !== undefined) {
            requestContext.setQueryParam("max-vitamin-b6", ObjectSerializer.serialize(maxVitaminB6, "number", "double"));
        }

        // Query Params
        if (minVitaminB12 !== undefined) {
            requestContext.setQueryParam("min-vitamin-b12", ObjectSerializer.serialize(minVitaminB12, "number", "double"));
        }

        // Query Params
        if (maxVitaminB12 !== undefined) {
            requestContext.setQueryParam("max-vitamin-b12", ObjectSerializer.serialize(maxVitaminB12, "number", "double"));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }

        // Query Params
        if (sortDirection !== undefined) {
            requestContext.setQueryParam("sort-direction", ObjectSerializer.serialize(sortDirection, "string", ""));
        }

        // Query Params
        if (offset !== undefined) {
            requestContext.setQueryParam("offset", ObjectSerializer.serialize(offset, "number", "int32"));
        }

        // Query Params
        if (number !== undefined) {
            requestContext.setQueryParam("number", ObjectSerializer.serialize(number, "number", "int32"));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

    /**
     * Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
     * Search Restaurants
     * @param lat The latitude to search around.
     * @param lon The longitude to search around.
     * @param query The search query.
     * @param distance The maximum distance of the restaurant in miles around the given location.
     * @param budget The budget in USD for the meal.
     * @param minRating The minimum rating of the restaurants in range [0,5].
     * @param cuisine The cuisine that the restaurants should support.
     * @param isOpen Whether the restaurants have to be open now.
     * @param page The page of the results.
     * @param sort The sort parameter, one of: cheapest, fastest, rating, distance or relevance.
     */
    public async searchRestaurants(lat: number, lon: number, query?: string, distance?: number, budget?: number, minRating?: number, cuisine?: string, isOpen?: boolean, page?: number, sort?: string, _options?: Configuration): Promise<RequestContext> {
        let _config = _options || this.configuration;

        // verify required parameter 'lat' is not null or undefined
        if (lat === null || lat === undefined) {
            throw new RequiredError("FoodApi", "searchRestaurants", "lat");
        }


        // verify required parameter 'lon' is not null or undefined
        if (lon === null || lon === undefined) {
            throw new RequiredError("FoodApi", "searchRestaurants", "lon");
        }










        // Path Params
        const localVarPath = '/search-restaurants';

        // Make Request Context
        const requestContext = _config.baseServer.makeRequestContext(localVarPath, HttpMethod.GET);
        requestContext.setHeaderParam("Accept", "application/json, */*;q=0.8")

        // Query Params
        if (query !== undefined) {
            requestContext.setQueryParam("query", ObjectSerializer.serialize(query, "string", ""));
        }

        // Query Params
        if (lat !== undefined) {
            requestContext.setQueryParam("lat", ObjectSerializer.serialize(lat, "number", "double"));
        }

        // Query Params
        if (lon !== undefined) {
            requestContext.setQueryParam("lon", ObjectSerializer.serialize(lon, "number", "double"));
        }

        // Query Params
        if (distance !== undefined) {
            requestContext.setQueryParam("distance", ObjectSerializer.serialize(distance, "number", "int32"));
        }

        // Query Params
        if (budget !== undefined) {
            requestContext.setQueryParam("budget", ObjectSerializer.serialize(budget, "number", "double"));
        }

        // Query Params
        if (minRating !== undefined) {
            requestContext.setQueryParam("min-rating", ObjectSerializer.serialize(minRating, "number", "double"));
        }

        // Query Params
        if (cuisine !== undefined) {
            requestContext.setQueryParam("cuisine", ObjectSerializer.serialize(cuisine, "string", ""));
        }

        // Query Params
        if (isOpen !== undefined) {
            requestContext.setQueryParam("is-open", ObjectSerializer.serialize(isOpen, "boolean", ""));
        }

        // Query Params
        if (page !== undefined) {
            requestContext.setQueryParam("page", ObjectSerializer.serialize(page, "number", "int32"));
        }

        // Query Params
        if (sort !== undefined) {
            requestContext.setQueryParam("sort", ObjectSerializer.serialize(sort, "string", ""));
        }


        let authMethod: SecurityAuthentication | undefined;
        // Apply auth methods
        authMethod = _config.authMethods["apiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        // Apply auth methods
        authMethod = _config.authMethods["headerApiKey"]
        if (authMethod?.applySecurityAuthentication) {
            await authMethod?.applySecurityAuthentication(requestContext);
        }
        
        const defaultAuth: SecurityAuthentication | undefined = _options?.authMethods?.default || this.configuration?.authMethods?.default
        if (defaultAuth?.applySecurityAuthentication) {
            await defaultAuth?.applySecurityAuthentication(requestContext);
        }

        return requestContext;
    }

}

export class FoodApiResponseProcessor {

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to computeNutrition
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async computeNutritionWithHttpInfo(response: ResponseContext): Promise<HttpInfo<ComputeNutrition200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: ComputeNutrition200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ComputeNutrition200Response", ""
            ) as ComputeNutrition200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: ComputeNutrition200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "ComputeNutrition200Response", ""
            ) as ComputeNutrition200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to retrieveRecipeInformation
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async retrieveRecipeInformationWithHttpInfo(response: ResponseContext): Promise<HttpInfo<RetrieveRecipeInformation200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: RetrieveRecipeInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "RetrieveRecipeInformation200Response", ""
            ) as RetrieveRecipeInformation200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: RetrieveRecipeInformation200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "RetrieveRecipeInformation200Response", ""
            ) as RetrieveRecipeInformation200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchDrinks
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchDrinksWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchDrinks200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchDrinks200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchDrinks200Response", ""
            ) as SearchDrinks200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchDrinks200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchDrinks200Response", ""
            ) as SearchDrinks200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchRecipes
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchRecipesWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchRecipes200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchRecipes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRecipes200Response", ""
            ) as SearchRecipes200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchRecipes200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRecipes200Response", ""
            ) as SearchRecipes200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

    /**
     * Unwraps the actual response sent by the server from the response context and deserializes the response content
     * to the expected objects
     *
     * @params response Response returned by the server for a request to searchRestaurants
     * @throws ApiException if the response code was not in [200, 299]
     */
     public async searchRestaurantsWithHttpInfo(response: ResponseContext): Promise<HttpInfo<SearchRestaurants200Response >> {
        const contentType = ObjectSerializer.normalizeMediaType(response.headers["content-type"]);
        if (isCodeInRange("200", response.httpStatusCode)) {
            const body: SearchRestaurants200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRestaurants200Response", ""
            ) as SearchRestaurants200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }
        if (isCodeInRange("401", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Unauthorized", undefined, response.headers);
        }
        if (isCodeInRange("402", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Payment Required", undefined, response.headers);
        }
        if (isCodeInRange("403", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Forbidden", undefined, response.headers);
        }
        if (isCodeInRange("404", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Found", undefined, response.headers);
        }
        if (isCodeInRange("406", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Not Acceptable", undefined, response.headers);
        }
        if (isCodeInRange("429", response.httpStatusCode)) {
            throw new ApiException<undefined>(response.httpStatusCode, "Too Many Requests", undefined, response.headers);
        }

        // Work around for missing responses in specification, e.g. for petstore.yaml
        if (response.httpStatusCode >= 200 && response.httpStatusCode <= 299) {
            const body: SearchRestaurants200Response = ObjectSerializer.deserialize(
                ObjectSerializer.parse(await response.body.text(), contentType),
                "SearchRestaurants200Response", ""
            ) as SearchRestaurants200Response;
            return new HttpInfo(response.httpStatusCode, response.headers, response.body, body);
        }

        throw new ApiException<string | Blob | undefined>(response.httpStatusCode, "Unknown API Status Code!", await response.getBodyAsAny(), response.headers);
    }

}
