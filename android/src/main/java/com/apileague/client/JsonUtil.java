/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.2
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package com.apileague.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Date;
import com.apileague.client.model.*;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    gsonBuilder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {
      public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        return new Date(json.getAsJsonPrimitive().getAsLong());
      }
    });
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("ComputeNutrition200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ComputeNutrition200Response>>(){}.getType();
    }
    
    if ("ComputeNutrition200ResponseIngredientBreakdownInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ComputeNutrition200ResponseIngredientBreakdownInner>>(){}.getType();
    }
    
    if ("ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner>>(){}.getType();
    }
    
    if ("ConvertUnits200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ConvertUnits200Response>>(){}.getType();
    }
    
    if ("CorrectSpelling200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<CorrectSpelling200Response>>(){}.getType();
    }
    
    if ("DetectGenderByName200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<DetectGenderByName200Response>>(){}.getType();
    }
    
    if ("DetectMainImageColor200ResponseInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<DetectMainImageColor200ResponseInner>>(){}.getType();
    }
    
    if ("ExtractAuthors200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractAuthors200Response>>(){}.getType();
    }
    
    if ("ExtractAuthors200ResponseAuthorsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractAuthors200ResponseAuthorsInner>>(){}.getType();
    }
    
    if ("ExtractContentFromAWebPage200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractContentFromAWebPage200Response>>(){}.getType();
    }
    
    if ("ExtractDates200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractDates200Response>>(){}.getType();
    }
    
    if ("ExtractDates200ResponseDatesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractDates200ResponseDatesInner>>(){}.getType();
    }
    
    if ("ExtractEntities200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractEntities200Response>>(){}.getType();
    }
    
    if ("ExtractEntities200ResponseEntitiesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractEntities200ResponseEntitiesInner>>(){}.getType();
    }
    
    if ("ExtractNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractNews200Response>>(){}.getType();
    }
    
    if ("ExtractNews200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractNews200ResponseImagesInner>>(){}.getType();
    }
    
    if ("ExtractNews200ResponseVideosInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractNews200ResponseVideosInner>>(){}.getType();
    }
    
    if ("ExtractPublishDate200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExtractPublishDate200Response>>(){}.getType();
    }
    
    if ("FindSimilarBooks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<FindSimilarBooks200Response>>(){}.getType();
    }
    
    if ("GenerateNonsenseWord200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<GenerateNonsenseWord200Response>>(){}.getType();
    }
    
    if ("ListWordSynonyms200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ListWordSynonyms200Response>>(){}.getType();
    }
    
    if ("PluralizeWord200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<PluralizeWord200Response>>(){}.getType();
    }
    
    if ("RandomMeme200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RandomMeme200Response>>(){}.getType();
    }
    
    if ("RandomPoem200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RandomPoem200Response>>(){}.getType();
    }
    
    if ("RandomQuote200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RandomQuote200Response>>(){}.getType();
    }
    
    if ("RandomRiddle200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RandomRiddle200Response>>(){}.getType();
    }
    
    if ("RandomTrivia200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RandomTrivia200Response>>(){}.getType();
    }
    
    if ("ReadKeyValueFromStore200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ReadKeyValueFromStore200Response>>(){}.getType();
    }
    
    if ("RetrievePageRank200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrievePageRank200Response>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200Response>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseCredits".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseCredits>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseDietaryProperties".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseDietaryProperties>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseIngredientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseIngredientsInner>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseIngredientsInnerMeasures".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseIngredientsInnerMeasures>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseInstructionsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseInstructionsInner>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseNutrition>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseScores".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseScores>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseTaste".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseTaste>>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseTimes".equalsIgnoreCase(className)) {
      return new TypeToken<List<RetrieveRecipeInformation200ResponseTimes>>(){}.getType();
    }
    
    if ("ScoreReadability200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreReadability200Response>>(){}.getType();
    }
    
    if ("ScoreText200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200Response>>(){}.getType();
    }
    
    if ("ScoreText200ResponseInterestingness".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseInterestingness>>(){}.getType();
    }
    
    if ("ScoreText200ResponseInterestingnessSubscores".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseInterestingnessSubscores>>(){}.getType();
    }
    
    if ("ScoreText200ResponseReadability".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseReadability>>(){}.getType();
    }
    
    if ("ScoreText200ResponseReadabilityMainscores".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseReadabilityMainscores>>(){}.getType();
    }
    
    if ("ScoreText200ResponseReadabilitySubscores".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseReadabilitySubscores>>(){}.getType();
    }
    
    if ("ScoreText200ResponseSkimmability".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseSkimmability>>(){}.getType();
    }
    
    if ("ScoreText200ResponseSkimmabilityMainscores".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseSkimmabilityMainscores>>(){}.getType();
    }
    
    if ("ScoreText200ResponseSkimmabilitySubscores".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseSkimmabilitySubscores>>(){}.getType();
    }
    
    if ("ScoreText200ResponseStyle".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseStyle>>(){}.getType();
    }
    
    if ("ScoreText200ResponseStyleSubscores".equalsIgnoreCase(className)) {
      return new TypeToken<List<ScoreText200ResponseStyleSubscores>>(){}.getType();
    }
    
    if ("SearchBooks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchBooks200Response>>(){}.getType();
    }
    
    if ("SearchBooks200ResponseBooksInnerInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchBooks200ResponseBooksInnerInner>>(){}.getType();
    }
    
    if ("SearchDrinks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200Response>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerCredits".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerCredits>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerIngredientsInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerInstructionsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerInstructionsInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerNutrition>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner>>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing>>(){}.getType();
    }
    
    if ("SearchGifs200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchGifs200Response>>(){}.getType();
    }
    
    if ("SearchGifs200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchGifs200ResponseImagesInner>>(){}.getType();
    }
    
    if ("SearchIcons200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchIcons200Response>>(){}.getType();
    }
    
    if ("SearchJokes200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchJokes200Response>>(){}.getType();
    }
    
    if ("SearchJokes200ResponseJokesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchJokes200ResponseJokesInner>>(){}.getType();
    }
    
    if ("SearchMemes200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchMemes200Response>>(){}.getType();
    }
    
    if ("SearchMemes200ResponseMemesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchMemes200ResponseMemesInner>>(){}.getType();
    }
    
    if ("SearchNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchNews200Response>>(){}.getType();
    }
    
    if ("SearchNews200ResponseNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchNews200ResponseNewsInner>>(){}.getType();
    }
    
    if ("SearchRecipes200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRecipes200Response>>(){}.getType();
    }
    
    if ("SearchRecipes200ResponseRecipesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRecipes200ResponseRecipesInner>>(){}.getType();
    }
    
    if ("SearchRecipes200ResponseRecipesInnerNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRecipes200ResponseRecipesInnerNutrition>>(){}.getType();
    }
    
    if ("SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>>(){}.getType();
    }
    
    if ("SearchRestaurants200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRestaurants200Response>>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRestaurants200ResponseRestaurantsInner>>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInnerAddress".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRestaurants200ResponseRestaurantsInnerAddress>>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInnerLocalHours".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRestaurants200ResponseRestaurantsInnerLocalHours>>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>>(){}.getType();
    }
    
    if ("SearchRoyaltyFreeImages200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRoyaltyFreeImages200Response>>(){}.getType();
    }
    
    if ("SearchRoyaltyFreeImages200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRoyaltyFreeImages200ResponseImagesInner>>(){}.getType();
    }
    
    if ("SearchRoyaltyFreeImages200ResponseImagesInnerLicense".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchRoyaltyFreeImages200ResponseImagesInnerLicense>>(){}.getType();
    }
    
    if ("SearchWeb200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchWeb200Response>>(){}.getType();
    }
    
    if ("SearchWeb200ResponseResultsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchWeb200ResponseResultsInner>>(){}.getType();
    }
    
    if ("SingularizeWord200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<SingularizeWord200Response>>(){}.getType();
    }
    
    if ("StemText200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<StemText200Response>>(){}.getType();
    }
    
    if ("StoreKeyValueGET200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<StoreKeyValueGET200Response>>(){}.getType();
    }
    
    if ("TagPartOfSpeech200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<TagPartOfSpeech200Response>>(){}.getType();
    }
    
    if ("TopNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<TopNews200Response>>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<TopNews200ResponseTopNewsInner>>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInnerNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<List<TopNews200ResponseTopNewsInnerNewsInner>>(){}.getType();
    }
    
    if ("VerifyEmailAddress200Response".equalsIgnoreCase(className)) {
      return new TypeToken<List<VerifyEmailAddress200Response>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("ComputeNutrition200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ComputeNutrition200Response>(){}.getType();
    }
    
    if ("ComputeNutrition200ResponseIngredientBreakdownInner".equalsIgnoreCase(className)) {
      return new TypeToken<ComputeNutrition200ResponseIngredientBreakdownInner>(){}.getType();
    }
    
    if ("ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner>(){}.getType();
    }
    
    if ("ConvertUnits200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ConvertUnits200Response>(){}.getType();
    }
    
    if ("CorrectSpelling200Response".equalsIgnoreCase(className)) {
      return new TypeToken<CorrectSpelling200Response>(){}.getType();
    }
    
    if ("DetectGenderByName200Response".equalsIgnoreCase(className)) {
      return new TypeToken<DetectGenderByName200Response>(){}.getType();
    }
    
    if ("DetectMainImageColor200ResponseInner".equalsIgnoreCase(className)) {
      return new TypeToken<DetectMainImageColor200ResponseInner>(){}.getType();
    }
    
    if ("ExtractAuthors200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractAuthors200Response>(){}.getType();
    }
    
    if ("ExtractAuthors200ResponseAuthorsInner".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractAuthors200ResponseAuthorsInner>(){}.getType();
    }
    
    if ("ExtractContentFromAWebPage200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractContentFromAWebPage200Response>(){}.getType();
    }
    
    if ("ExtractDates200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractDates200Response>(){}.getType();
    }
    
    if ("ExtractDates200ResponseDatesInner".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractDates200ResponseDatesInner>(){}.getType();
    }
    
    if ("ExtractEntities200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractEntities200Response>(){}.getType();
    }
    
    if ("ExtractEntities200ResponseEntitiesInner".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractEntities200ResponseEntitiesInner>(){}.getType();
    }
    
    if ("ExtractNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractNews200Response>(){}.getType();
    }
    
    if ("ExtractNews200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractNews200ResponseImagesInner>(){}.getType();
    }
    
    if ("ExtractNews200ResponseVideosInner".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractNews200ResponseVideosInner>(){}.getType();
    }
    
    if ("ExtractPublishDate200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ExtractPublishDate200Response>(){}.getType();
    }
    
    if ("FindSimilarBooks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<FindSimilarBooks200Response>(){}.getType();
    }
    
    if ("GenerateNonsenseWord200Response".equalsIgnoreCase(className)) {
      return new TypeToken<GenerateNonsenseWord200Response>(){}.getType();
    }
    
    if ("ListWordSynonyms200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ListWordSynonyms200Response>(){}.getType();
    }
    
    if ("PluralizeWord200Response".equalsIgnoreCase(className)) {
      return new TypeToken<PluralizeWord200Response>(){}.getType();
    }
    
    if ("RandomMeme200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RandomMeme200Response>(){}.getType();
    }
    
    if ("RandomPoem200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RandomPoem200Response>(){}.getType();
    }
    
    if ("RandomQuote200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RandomQuote200Response>(){}.getType();
    }
    
    if ("RandomRiddle200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RandomRiddle200Response>(){}.getType();
    }
    
    if ("RandomTrivia200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RandomTrivia200Response>(){}.getType();
    }
    
    if ("ReadKeyValueFromStore200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ReadKeyValueFromStore200Response>(){}.getType();
    }
    
    if ("RetrievePageRank200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RetrievePageRank200Response>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200Response".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200Response>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseCredits".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseCredits>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseDietaryProperties".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseDietaryProperties>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseIngredientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseIngredientsInner>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseIngredientsInnerMeasures".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseIngredientsInnerMeasures>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseInstructionsInner".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseInstructionsInner>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseNutrition>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseScores".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseScores>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseTaste".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseTaste>(){}.getType();
    }
    
    if ("RetrieveRecipeInformation200ResponseTimes".equalsIgnoreCase(className)) {
      return new TypeToken<RetrieveRecipeInformation200ResponseTimes>(){}.getType();
    }
    
    if ("ScoreReadability200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreReadability200Response>(){}.getType();
    }
    
    if ("ScoreText200Response".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200Response>(){}.getType();
    }
    
    if ("ScoreText200ResponseInterestingness".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseInterestingness>(){}.getType();
    }
    
    if ("ScoreText200ResponseInterestingnessSubscores".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseInterestingnessSubscores>(){}.getType();
    }
    
    if ("ScoreText200ResponseReadability".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseReadability>(){}.getType();
    }
    
    if ("ScoreText200ResponseReadabilityMainscores".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseReadabilityMainscores>(){}.getType();
    }
    
    if ("ScoreText200ResponseReadabilitySubscores".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseReadabilitySubscores>(){}.getType();
    }
    
    if ("ScoreText200ResponseSkimmability".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseSkimmability>(){}.getType();
    }
    
    if ("ScoreText200ResponseSkimmabilityMainscores".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseSkimmabilityMainscores>(){}.getType();
    }
    
    if ("ScoreText200ResponseSkimmabilitySubscores".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseSkimmabilitySubscores>(){}.getType();
    }
    
    if ("ScoreText200ResponseStyle".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseStyle>(){}.getType();
    }
    
    if ("ScoreText200ResponseStyleSubscores".equalsIgnoreCase(className)) {
      return new TypeToken<ScoreText200ResponseStyleSubscores>(){}.getType();
    }
    
    if ("SearchBooks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchBooks200Response>(){}.getType();
    }
    
    if ("SearchBooks200ResponseBooksInnerInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchBooks200ResponseBooksInnerInner>(){}.getType();
    }
    
    if ("SearchDrinks200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200Response>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerCredits".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerCredits>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerIngredientsInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerInstructionsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerInstructionsInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerNutrition>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner>(){}.getType();
    }
    
    if ("SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing>(){}.getType();
    }
    
    if ("SearchGifs200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchGifs200Response>(){}.getType();
    }
    
    if ("SearchGifs200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchGifs200ResponseImagesInner>(){}.getType();
    }
    
    if ("SearchIcons200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchIcons200Response>(){}.getType();
    }
    
    if ("SearchJokes200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchJokes200Response>(){}.getType();
    }
    
    if ("SearchJokes200ResponseJokesInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchJokes200ResponseJokesInner>(){}.getType();
    }
    
    if ("SearchMemes200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchMemes200Response>(){}.getType();
    }
    
    if ("SearchMemes200ResponseMemesInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchMemes200ResponseMemesInner>(){}.getType();
    }
    
    if ("SearchNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchNews200Response>(){}.getType();
    }
    
    if ("SearchNews200ResponseNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchNews200ResponseNewsInner>(){}.getType();
    }
    
    if ("SearchRecipes200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRecipes200Response>(){}.getType();
    }
    
    if ("SearchRecipes200ResponseRecipesInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRecipes200ResponseRecipesInner>(){}.getType();
    }
    
    if ("SearchRecipes200ResponseRecipesInnerNutrition".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRecipes200ResponseRecipesInnerNutrition>(){}.getType();
    }
    
    if ("SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner>(){}.getType();
    }
    
    if ("SearchRestaurants200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRestaurants200Response>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRestaurants200ResponseRestaurantsInner>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInnerAddress".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRestaurants200ResponseRestaurantsInnerAddress>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInnerLocalHours".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRestaurants200ResponseRestaurantsInnerLocalHours>(){}.getType();
    }
    
    if ("SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational>(){}.getType();
    }
    
    if ("SearchRoyaltyFreeImages200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRoyaltyFreeImages200Response>(){}.getType();
    }
    
    if ("SearchRoyaltyFreeImages200ResponseImagesInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRoyaltyFreeImages200ResponseImagesInner>(){}.getType();
    }
    
    if ("SearchRoyaltyFreeImages200ResponseImagesInnerLicense".equalsIgnoreCase(className)) {
      return new TypeToken<SearchRoyaltyFreeImages200ResponseImagesInnerLicense>(){}.getType();
    }
    
    if ("SearchWeb200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SearchWeb200Response>(){}.getType();
    }
    
    if ("SearchWeb200ResponseResultsInner".equalsIgnoreCase(className)) {
      return new TypeToken<SearchWeb200ResponseResultsInner>(){}.getType();
    }
    
    if ("SingularizeWord200Response".equalsIgnoreCase(className)) {
      return new TypeToken<SingularizeWord200Response>(){}.getType();
    }
    
    if ("StemText200Response".equalsIgnoreCase(className)) {
      return new TypeToken<StemText200Response>(){}.getType();
    }
    
    if ("StoreKeyValueGET200Response".equalsIgnoreCase(className)) {
      return new TypeToken<StoreKeyValueGET200Response>(){}.getType();
    }
    
    if ("TagPartOfSpeech200Response".equalsIgnoreCase(className)) {
      return new TypeToken<TagPartOfSpeech200Response>(){}.getType();
    }
    
    if ("TopNews200Response".equalsIgnoreCase(className)) {
      return new TypeToken<TopNews200Response>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<TopNews200ResponseTopNewsInner>(){}.getType();
    }
    
    if ("TopNews200ResponseTopNewsInnerNewsInner".equalsIgnoreCase(className)) {
      return new TypeToken<TopNews200ResponseTopNewsInnerNewsInner>(){}.getType();
    }
    
    if ("VerifyEmailAddress200Response".equalsIgnoreCase(className)) {
      return new TypeToken<VerifyEmailAddress200Response>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
