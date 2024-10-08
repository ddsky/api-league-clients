/*
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.apileague.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.google.gson.JsonElement;
import io.gsonfire.GsonFireBuilder;
import io.gsonfire.TypeSelector;

import okio.ByteString;

import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.HashMap;

/*
 * A JSON utility class
 *
 * NOTE: in the future, this class may be converted to static, which may break
 *       backward-compatibility
 */
public class JSON {
    private static Gson gson;
    private static boolean isLenientOnJson = false;
    private static DateTypeAdapter dateTypeAdapter = new DateTypeAdapter();
    private static SqlDateTypeAdapter sqlDateTypeAdapter = new SqlDateTypeAdapter();
    private static OffsetDateTimeTypeAdapter offsetDateTimeTypeAdapter = new OffsetDateTimeTypeAdapter();
    private static LocalDateTypeAdapter localDateTypeAdapter = new LocalDateTypeAdapter();
    private static ByteArrayAdapter byteArrayAdapter = new ByteArrayAdapter();

    @SuppressWarnings("unchecked")
    public static GsonBuilder createGson() {
        GsonFireBuilder fireBuilder = new GsonFireBuilder()
        ;
        GsonBuilder builder = fireBuilder.createGsonBuilder();
        return builder;
    }

    private static String getDiscriminatorValue(JsonElement readElement, String discriminatorField) {
        JsonElement element = readElement.getAsJsonObject().get(discriminatorField);
        if (null == element) {
            throw new IllegalArgumentException("missing discriminator field: <" + discriminatorField + ">");
        }
        return element.getAsString();
    }

    /**
     * Returns the Java class that implements the OpenAPI schema for the specified discriminator value.
     *
     * @param classByDiscriminatorValue The map of discriminator values to Java classes.
     * @param discriminatorValue The value of the OpenAPI discriminator in the input data.
     * @return The Java class that implements the OpenAPI schema
     */
    private static Class getClassByDiscriminator(Map classByDiscriminatorValue, String discriminatorValue) {
        Class clazz = (Class) classByDiscriminatorValue.get(discriminatorValue);
        if (null == clazz) {
            throw new IllegalArgumentException("cannot determine model class of name: <" + discriminatorValue + ">");
        }
        return clazz;
    }

    static {
        GsonBuilder gsonBuilder = createGson();
        gsonBuilder.registerTypeAdapter(Date.class, dateTypeAdapter);
        gsonBuilder.registerTypeAdapter(java.sql.Date.class, sqlDateTypeAdapter);
        gsonBuilder.registerTypeAdapter(OffsetDateTime.class, offsetDateTimeTypeAdapter);
        gsonBuilder.registerTypeAdapter(LocalDate.class, localDateTypeAdapter);
        gsonBuilder.registerTypeAdapter(byte[].class, byteArrayAdapter);
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ComputeNutrition200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ConvertUnits200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.CorrectSpelling200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.DetectGenderByName200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.DetectLanguage200ResponseInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.DetectMainImageColor200ResponseInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.DetectSentiment200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.DetectSentiment200ResponseDocument.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.DetectSentiment200ResponseSentencesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractAuthors200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractAuthors200ResponseAuthorsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractContentFromAWebPage200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractDates200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractDates200ResponseDatesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractEntities200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractEntities200ResponseEntitiesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractNews200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractNews200ResponseImagesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractNews200ResponseVideosInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ExtractPublishDate200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.FindSimilarBooks200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.GenerateNonsenseWord200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ListWordSynonyms200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.PluralizeWord200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RandomMeme200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RandomPoem200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RandomQuote200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RandomRiddle200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RandomTrivia200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ReadKeyValueFromStore200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrievePageRank200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseCredits.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseDietaryProperties.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseIngredientsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseInstructionsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseNutrition.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseScores.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseTaste.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.RetrieveRecipeInformation200ResponseTimes.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreReadability200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseInterestingness.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseInterestingnessSubscores.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseReadability.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseReadabilityMainscores.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseReadabilitySubscores.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseSkimmability.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseSkimmabilityMainscores.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseSkimmabilitySubscores.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseStyle.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.ScoreText200ResponseStyleSubscores.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchBooks200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchBooks200ResponseBooksInnerInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerCredits.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerIngredientsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresMetric.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasuresUs.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerInstructionsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutrition.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchGifs200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchGifs200ResponseImagesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchIcons200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchJokes200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchJokes200ResponseJokesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchMemes200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchMemes200ResponseMemesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchNews200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchNews200ResponseNewsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRecipes200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRecipes200ResponseRecipesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutrition.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRestaurants200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInnerAddress.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHours.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRoyaltyFreeImages200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRoyaltyFreeImages200ResponseImagesInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchRoyaltyFreeImages200ResponseImagesInnerLicense.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchWeb200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SearchWeb200ResponseResultsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.SingularizeWord200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.StemText200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.StoreKeyValueGET200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.TagPartOfSpeech200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.TopNews200Response.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.TopNews200ResponseTopNewsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.TopNews200ResponseTopNewsInnerNewsInner.CustomTypeAdapterFactory());
        gsonBuilder.registerTypeAdapterFactory(new com.apileague.client.model.VerifyEmailAddress200Response.CustomTypeAdapterFactory());
        gson = gsonBuilder.create();
    }

    /**
     * Get Gson.
     *
     * @return Gson
     */
    public static Gson getGson() {
        return gson;
    }

    /**
     * Set Gson.
     *
     * @param gson Gson
     */
    public static void setGson(Gson gson) {
        JSON.gson = gson;
    }

    public static void setLenientOnJson(boolean lenientOnJson) {
        isLenientOnJson = lenientOnJson;
    }

    /**
     * Serialize the given Java object into JSON string.
     *
     * @param obj Object
     * @return String representation of the JSON
     */
    public static String serialize(Object obj) {
        return gson.toJson(obj);
    }

    /**
     * Deserialize the given JSON string to Java object.
     *
     * @param <T>        Type
     * @param body       The JSON string
     * @param returnType The type to deserialize into
     * @return The deserialized Java object
     */
    @SuppressWarnings("unchecked")
    public static <T> T deserialize(String body, Type returnType) {
        try {
            if (isLenientOnJson) {
                JsonReader jsonReader = new JsonReader(new StringReader(body));
                // see https://google-gson.googlecode.com/svn/trunk/gson/docs/javadocs/com/google/gson/stream/JsonReader.html#setLenient(boolean)
                jsonReader.setLenient(true);
                return gson.fromJson(jsonReader, returnType);
            } else {
                return gson.fromJson(body, returnType);
            }
        } catch (JsonParseException e) {
            // Fallback processing when failed to parse JSON form response body:
            // return the response body string directly for the String return type;
            if (returnType.equals(String.class)) {
                return (T) body;
            } else {
                throw (e);
            }
        }
    }

    /**
     * Gson TypeAdapter for Byte Array type
     */
    public static class ByteArrayAdapter extends TypeAdapter<byte[]> {

        @Override
        public void write(JsonWriter out, byte[] value) throws IOException {
            if (value == null) {
                out.nullValue();
            } else {
                out.value(ByteString.of(value).base64());
            }
        }

        @Override
        public byte[] read(JsonReader in) throws IOException {
            switch (in.peek()) {
                case NULL:
                    in.nextNull();
                    return null;
                default:
                    String bytesAsBase64 = in.nextString();
                    ByteString byteString = ByteString.decodeBase64(bytesAsBase64);
                    return byteString.toByteArray();
            }
        }
    }

    /**
     * Gson TypeAdapter for JSR310 OffsetDateTime type
     */
    public static class OffsetDateTimeTypeAdapter extends TypeAdapter<OffsetDateTime> {

        private DateTimeFormatter formatter;

        public OffsetDateTimeTypeAdapter() {
            this(DateTimeFormatter.ISO_OFFSET_DATE_TIME);
        }

        public OffsetDateTimeTypeAdapter(DateTimeFormatter formatter) {
            this.formatter = formatter;
        }

        public void setFormat(DateTimeFormatter dateFormat) {
            this.formatter = dateFormat;
        }

        @Override
        public void write(JsonWriter out, OffsetDateTime date) throws IOException {
            if (date == null) {
                out.nullValue();
            } else {
                out.value(formatter.format(date));
            }
        }

        @Override
        public OffsetDateTime read(JsonReader in) throws IOException {
            switch (in.peek()) {
                case NULL:
                    in.nextNull();
                    return null;
                default:
                    String date = in.nextString();
                    if (date.endsWith("+0000")) {
                        date = date.substring(0, date.length()-5) + "Z";
                    }
                    return OffsetDateTime.parse(date, formatter);
            }
        }
    }

    /**
     * Gson TypeAdapter for JSR310 LocalDate type
     */
    public static class LocalDateTypeAdapter extends TypeAdapter<LocalDate> {

        private DateTimeFormatter formatter;

        public LocalDateTypeAdapter() {
            this(DateTimeFormatter.ISO_LOCAL_DATE);
        }

        public LocalDateTypeAdapter(DateTimeFormatter formatter) {
            this.formatter = formatter;
        }

        public void setFormat(DateTimeFormatter dateFormat) {
            this.formatter = dateFormat;
        }

        @Override
        public void write(JsonWriter out, LocalDate date) throws IOException {
            if (date == null) {
                out.nullValue();
            } else {
                out.value(formatter.format(date));
            }
        }

        @Override
        public LocalDate read(JsonReader in) throws IOException {
            switch (in.peek()) {
                case NULL:
                    in.nextNull();
                    return null;
                default:
                    String date = in.nextString();
                    return LocalDate.parse(date, formatter);
            }
        }
    }

    public static void setOffsetDateTimeFormat(DateTimeFormatter dateFormat) {
        offsetDateTimeTypeAdapter.setFormat(dateFormat);
    }

    public static void setLocalDateFormat(DateTimeFormatter dateFormat) {
        localDateTypeAdapter.setFormat(dateFormat);
    }

    /**
     * Gson TypeAdapter for java.sql.Date type
     * If the dateFormat is null, a simple "yyyy-MM-dd" format will be used
     * (more efficient than SimpleDateFormat).
     */
    public static class SqlDateTypeAdapter extends TypeAdapter<java.sql.Date> {

        private DateFormat dateFormat;

        public SqlDateTypeAdapter() {}

        public SqlDateTypeAdapter(DateFormat dateFormat) {
            this.dateFormat = dateFormat;
        }

        public void setFormat(DateFormat dateFormat) {
            this.dateFormat = dateFormat;
        }

        @Override
        public void write(JsonWriter out, java.sql.Date date) throws IOException {
            if (date == null) {
                out.nullValue();
            } else {
                String value;
                if (dateFormat != null) {
                    value = dateFormat.format(date);
                } else {
                    value = date.toString();
                }
                out.value(value);
            }
        }

        @Override
        public java.sql.Date read(JsonReader in) throws IOException {
            switch (in.peek()) {
                case NULL:
                    in.nextNull();
                    return null;
                default:
                    String date = in.nextString();
                    try {
                        if (dateFormat != null) {
                            return new java.sql.Date(dateFormat.parse(date).getTime());
                        }
                        return new java.sql.Date(ISO8601Utils.parse(date, new ParsePosition(0)).getTime());
                    } catch (ParseException e) {
                        throw new JsonParseException(e);
                    }
            }
        }
    }

    /**
     * Gson TypeAdapter for java.util.Date type
     * If the dateFormat is null, ISO8601Utils will be used.
     */
    public static class DateTypeAdapter extends TypeAdapter<Date> {

        private DateFormat dateFormat;

        public DateTypeAdapter() {}

        public DateTypeAdapter(DateFormat dateFormat) {
            this.dateFormat = dateFormat;
        }

        public void setFormat(DateFormat dateFormat) {
            this.dateFormat = dateFormat;
        }

        @Override
        public void write(JsonWriter out, Date date) throws IOException {
            if (date == null) {
                out.nullValue();
            } else {
                String value;
                if (dateFormat != null) {
                    value = dateFormat.format(date);
                } else {
                    value = ISO8601Utils.format(date, true);
                }
                out.value(value);
            }
        }

        @Override
        public Date read(JsonReader in) throws IOException {
            try {
                switch (in.peek()) {
                    case NULL:
                        in.nextNull();
                        return null;
                    default:
                        String date = in.nextString();
                        try {
                            if (dateFormat != null) {
                                return dateFormat.parse(date);
                            }
                            return ISO8601Utils.parse(date, new ParsePosition(0));
                        } catch (ParseException e) {
                            throw new JsonParseException(e);
                        }
                }
            } catch (IllegalArgumentException e) {
                throw new JsonParseException(e);
            }
        }
    }

    public static void setDateFormat(DateFormat dateFormat) {
        dateTypeAdapter.setFormat(dateFormat);
    }

    public static void setSqlDateFormat(DateFormat dateFormat) {
        sqlDateTypeAdapter.setFormat(dateFormat);
    }
}
