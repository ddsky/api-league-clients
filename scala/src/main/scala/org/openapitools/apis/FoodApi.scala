package org.openapitools.apis

import java.io._
import apileague._
import org.openapitools.models._
import org.openapitools.models.ComputeNutrition200Response
import org.openapitools.models.RetrieveRecipeInformation200Response
import org.openapitools.models.SearchRecipes200Response
import org.openapitools.models.SearchRestaurants200Response
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.nio.file.Files
import java.time._

object FoodApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        computeNutrition(da) :+:
        retrieveRecipeInformation(da) :+:
        searchRecipes(da) :+:
        searchRestaurants(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a ComputeNutrition200Response
        */
        private def computeNutrition(da: DataAccessor): Endpoint[ComputeNutrition200Response] =
        get("compute-nutrition" :: param("ingredients") :: paramOption("servings").map(_.map(_.toInt)) :: paramOption("reduce-oils").map(_.map(_.toBoolean)) :: param("api-key") :: header("x-api-key")) { (ingredients: String, servings: Option[Int], reduceOils: Option[Boolean], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Food_computeNutrition(ingredients, servings, reduceOils, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a RetrieveRecipeInformation200Response
        */
        private def retrieveRecipeInformation(da: DataAccessor): Endpoint[RetrieveRecipeInformation200Response] =
        get("retrieve-recipe" :: param("id").map(_.toInt) :: paramOption("add-wine-pairing").map(_.map(_.toBoolean)) :: param("api-key") :: header("x-api-key")) { (id: Int, addWinePairing: Option[Boolean], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Food_retrieveRecipeInformation(id, addWinePairing, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchRecipes200Response
        */
        private def searchRecipes(da: DataAccessor): Endpoint[SearchRecipes200Response] =
        get("search-recipes" :: paramOption("query") :: paramOption("cuisines") :: paramOption("exclude-cuisines") :: paramOption("meal-type") :: paramOption("diet") :: paramOption("intolerances") :: paramOption("equipment") :: paramOption("include-ingredients") :: paramOption("exclude-ingredients") :: paramOption("fill-ingredients").map(_.map(_.toBoolean)) :: paramOption("add-recipe-information").map(_.map(_.toBoolean)) :: paramOption("max-time").map(_.map(_.toInt)) :: paramOption("min-calories").map(_.map(_.toDouble)) :: paramOption("max-calories").map(_.map(_.toDouble)) :: paramOption("min-carbs").map(_.map(_.toDouble)) :: paramOption("max-carbs").map(_.map(_.toDouble)) :: paramOption("min-protein").map(_.map(_.toDouble)) :: paramOption("max-protein").map(_.map(_.toDouble)) :: paramOption("min-fat").map(_.map(_.toDouble)) :: paramOption("max-fat").map(_.map(_.toDouble)) :: paramOption("min-sugar").map(_.map(_.toDouble)) :: paramOption("max-sugar").map(_.map(_.toDouble)) :: paramOption("min-fiber").map(_.map(_.toDouble)) :: paramOption("max-fiber").map(_.map(_.toDouble)) :: paramOption("min-folate").map(_.map(_.toDouble)) :: paramOption("max-folate").map(_.map(_.toDouble)) :: paramOption("min-folic-acid").map(_.map(_.toDouble)) :: paramOption("max-folic-acid").map(_.map(_.toDouble)) :: paramOption("min-iodine").map(_.map(_.toDouble)) :: paramOption("max-iodine").map(_.map(_.toDouble)) :: paramOption("min-iron").map(_.map(_.toDouble)) :: paramOption("max-iron").map(_.map(_.toDouble)) :: paramOption("min-zinc").map(_.map(_.toDouble)) :: paramOption("max-zinc").map(_.map(_.toDouble)) :: paramOption("min-magnesium").map(_.map(_.toDouble)) :: paramOption("max-magnesium").map(_.map(_.toDouble)) :: paramOption("min-manganese").map(_.map(_.toDouble)) :: paramOption("max-manganese").map(_.map(_.toDouble)) :: paramOption("min-phosphorus").map(_.map(_.toDouble)) :: paramOption("max-phosphorus").map(_.map(_.toDouble)) :: paramOption("min-potassium").map(_.map(_.toDouble)) :: paramOption("max-potassium").map(_.map(_.toDouble)) :: paramOption("min-sodium").map(_.map(_.toDouble)) :: paramOption("max-sodium").map(_.map(_.toDouble)) :: paramOption("min-selenium").map(_.map(_.toDouble)) :: paramOption("max-selenium").map(_.map(_.toDouble)) :: paramOption("min-copper").map(_.map(_.toDouble)) :: paramOption("max-copper").map(_.map(_.toDouble)) :: paramOption("min-calcium").map(_.map(_.toDouble)) :: paramOption("max-calcium").map(_.map(_.toDouble)) :: paramOption("min-choline").map(_.map(_.toDouble)) :: paramOption("max-choline").map(_.map(_.toDouble)) :: paramOption("min-cholesterol").map(_.map(_.toDouble)) :: paramOption("max-cholesterol").map(_.map(_.toDouble)) :: paramOption("min-fluoride").map(_.map(_.toDouble)) :: paramOption("max-fluoride").map(_.map(_.toDouble)) :: paramOption("min-alcohol").map(_.map(_.toDouble)) :: paramOption("max-alcohol").map(_.map(_.toDouble)) :: paramOption("min-caffeine").map(_.map(_.toDouble)) :: paramOption("max-caffeine").map(_.map(_.toDouble)) :: paramOption("min-saturated-fat").map(_.map(_.toDouble)) :: paramOption("max-saturated-fat").map(_.map(_.toDouble)) :: paramOption("min-vitamin-a").map(_.map(_.toDouble)) :: paramOption("max-vitamin-a").map(_.map(_.toDouble)) :: paramOption("min-vitamin-c").map(_.map(_.toDouble)) :: paramOption("max-vitamin-c").map(_.map(_.toDouble)) :: paramOption("min-vitamin-d").map(_.map(_.toDouble)) :: paramOption("max-vitamin-d").map(_.map(_.toDouble)) :: paramOption("min-vitamin-e").map(_.map(_.toDouble)) :: paramOption("max-vitamin-e").map(_.map(_.toDouble)) :: paramOption("min-vitamin-k").map(_.map(_.toDouble)) :: paramOption("max-vitamin-k").map(_.map(_.toDouble)) :: paramOption("min-vitamin-b1").map(_.map(_.toDouble)) :: paramOption("max-vitamin-b1").map(_.map(_.toDouble)) :: paramOption("min-vitamin-b2").map(_.map(_.toDouble)) :: paramOption("max-vitamin-b2").map(_.map(_.toDouble)) :: paramOption("min-vitamin-b3").map(_.map(_.toDouble)) :: paramOption("max-vitamin-b3").map(_.map(_.toDouble)) :: paramOption("min-vitamin-b5").map(_.map(_.toDouble)) :: paramOption("max-vitamin-b5").map(_.map(_.toDouble)) :: paramOption("min-vitamin-b6").map(_.map(_.toDouble)) :: paramOption("max-vitamin-b6").map(_.map(_.toDouble)) :: paramOption("min-vitamin-b12").map(_.map(_.toDouble)) :: paramOption("max-vitamin-b12").map(_.map(_.toDouble)) :: paramOption("sort") :: paramOption("sort-direction") :: paramOption("offset").map(_.map(_.toInt)) :: paramOption("number").map(_.map(_.toInt)) :: param("api-key") :: header("x-api-key")) { (query: Option[String], cuisines: Option[String], excludeCuisines: Option[String], mealType: Option[String], diet: Option[String], intolerances: Option[String], equipment: Option[String], includeIngredients: Option[String], excludeIngredients: Option[String], fillIngredients: Option[Boolean], addRecipeInformation: Option[Boolean], maxTime: Option[Int], minCalories: Option[Double], maxCalories: Option[Double], minCarbs: Option[Double], maxCarbs: Option[Double], minProtein: Option[Double], maxProtein: Option[Double], minFat: Option[Double], maxFat: Option[Double], minSugar: Option[Double], maxSugar: Option[Double], minFiber: Option[Double], maxFiber: Option[Double], minFolate: Option[Double], maxFolate: Option[Double], minFolicAcid: Option[Double], maxFolicAcid: Option[Double], minIodine: Option[Double], maxIodine: Option[Double], minIron: Option[Double], maxIron: Option[Double], minZinc: Option[Double], maxZinc: Option[Double], minMagnesium: Option[Double], maxMagnesium: Option[Double], minManganese: Option[Double], maxManganese: Option[Double], minPhosphorus: Option[Double], maxPhosphorus: Option[Double], minPotassium: Option[Double], maxPotassium: Option[Double], minSodium: Option[Double], maxSodium: Option[Double], minSelenium: Option[Double], maxSelenium: Option[Double], minCopper: Option[Double], maxCopper: Option[Double], minCalcium: Option[Double], maxCalcium: Option[Double], minCholine: Option[Double], maxCholine: Option[Double], minCholesterol: Option[Double], maxCholesterol: Option[Double], minFluoride: Option[Double], maxFluoride: Option[Double], minAlcohol: Option[Double], maxAlcohol: Option[Double], minCaffeine: Option[Double], maxCaffeine: Option[Double], minSaturatedFat: Option[Double], maxSaturatedFat: Option[Double], minVitaminA: Option[Double], maxVitaminA: Option[Double], minVitaminC: Option[Double], maxVitaminC: Option[Double], minVitaminD: Option[Double], maxVitaminD: Option[Double], minVitaminE: Option[Double], maxVitaminE: Option[Double], minVitaminK: Option[Double], maxVitaminK: Option[Double], minVitaminB1: Option[Double], maxVitaminB1: Option[Double], minVitaminB2: Option[Double], maxVitaminB2: Option[Double], minVitaminB3: Option[Double], maxVitaminB3: Option[Double], minVitaminB5: Option[Double], maxVitaminB5: Option[Double], minVitaminB6: Option[Double], maxVitaminB6: Option[Double], minVitaminB12: Option[Double], maxVitaminB12: Option[Double], sort: Option[String], sortDirection: Option[String], offset: Option[Int], number: Option[Int], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Food_searchRecipes(query, cuisines, excludeCuisines, mealType, diet, intolerances, equipment, includeIngredients, excludeIngredients, fillIngredients, addRecipeInformation, maxTime, minCalories, maxCalories, minCarbs, maxCarbs, minProtein, maxProtein, minFat, maxFat, minSugar, maxSugar, minFiber, maxFiber, minFolate, maxFolate, minFolicAcid, maxFolicAcid, minIodine, maxIodine, minIron, maxIron, minZinc, maxZinc, minMagnesium, maxMagnesium, minManganese, maxManganese, minPhosphorus, maxPhosphorus, minPotassium, maxPotassium, minSodium, maxSodium, minSelenium, maxSelenium, minCopper, maxCopper, minCalcium, maxCalcium, minCholine, maxCholine, minCholesterol, maxCholesterol, minFluoride, maxFluoride, minAlcohol, maxAlcohol, minCaffeine, maxCaffeine, minSaturatedFat, maxSaturatedFat, minVitaminA, maxVitaminA, minVitaminC, maxVitaminC, minVitaminD, maxVitaminD, minVitaminE, maxVitaminE, minVitaminK, maxVitaminK, minVitaminB1, maxVitaminB1, minVitaminB2, maxVitaminB2, minVitaminB3, maxVitaminB3, minVitaminB5, maxVitaminB5, minVitaminB6, maxVitaminB6, minVitaminB12, maxVitaminB12, sort, sortDirection, offset, number, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchRestaurants200Response
        */
        private def searchRestaurants(da: DataAccessor): Endpoint[SearchRestaurants200Response] =
        get("search-restaurants" :: param("lat").map(_.toDouble) :: param("lon").map(_.toDouble) :: paramOption("query") :: paramOption("distance").map(_.map(_.toInt)) :: paramOption("budget").map(_.map(_.toDouble)) :: paramOption("min-rating").map(_.map(_.toDouble)) :: paramOption("cuisine") :: paramOption("is-open").map(_.map(_.toBoolean)) :: paramOption("page").map(_.map(_.toInt)) :: paramOption("sort") :: param("api-key") :: header("x-api-key")) { (lat: Double, lon: Double, query: Option[String], distance: Option[Int], budget: Option[Double], minRating: Option[Double], cuisine: Option[String], isOpen: Option[Boolean], page: Option[Int], sort: Option[String], authParamapiKey: String, authParamheaderApiKey: String) =>
          da.Food_searchRestaurants(lat, lon, query, distance, budget, minRating, cuisine, isOpen, page, sort, authParamapiKey, authParamheaderApiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = Files.createTempFile("tmpFoodApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
