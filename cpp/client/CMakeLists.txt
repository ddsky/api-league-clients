cmake_minimum_required(VERSION 3.5)

project(apileague)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Network Gui)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Network Gui)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

add_library(${PROJECT_NAME}
  OAIConvertUnits_200_response.h
  OAICorrectSpelling_200_response.h
  OAIDetectLanguage_200_response_inner.h
  OAIDetectMainImageColor_200_response_inner.h
  OAIDetectSentiment_200_response.h
  OAIDetectSentiment_200_response_document.h
  OAIDetectSentiment_200_response_sentences_inner.h
  OAIExtractAuthors_200_response.h
  OAIExtractAuthors_200_response_authors_inner.h
  OAIExtractContentFromAWebPage_200_response.h
  OAIExtractDates_200_response.h
  OAIExtractDates_200_response_dates_inner.h
  OAIExtractEntities_200_response.h
  OAIExtractEntities_200_response_entities_inner.h
  OAIExtractNews_200_response.h
  OAIExtractPublishDate_200_response.h
  OAIFindSimilarBooks_200_response.h
  OAIGenerateNonsenseWord_200_response.h
  OAIListWordSynonyms_200_response.h
  OAIPartOfSpeechTagging_200_response.h
  OAIPluralizeWord_200_response.h
  OAIRandomMeme_200_response.h
  OAIRandomPoem_200_response.h
  OAIRandomQuote_200_response.h
  OAIRandomTrivia_200_response.h
  OAIReadKeyValueFromStore_200_response.h
  OAIScoreReadability_200_response.h
  OAIScoreText_200_response.h
  OAIScoreText_200_response_interestingness.h
  OAIScoreText_200_response_interestingness_subscores.h
  OAIScoreText_200_response_readability.h
  OAIScoreText_200_response_readability_mainscores.h
  OAIScoreText_200_response_readability_subscores.h
  OAIScoreText_200_response_skimmability.h
  OAIScoreText_200_response_skimmability_mainscores.h
  OAIScoreText_200_response_skimmability_subscores.h
  OAIScoreText_200_response_style.h
  OAIScoreText_200_response_style_subscores.h
  OAISearchBooks_200_response.h
  OAISearchBooks_200_response_books_inner.h
  OAISearchGifs_200_response.h
  OAISearchGifs_200_response_images_inner.h
  OAISearchJokes_200_response.h
  OAISearchJokes_200_response_jokes_inner.h
  OAISearchMemes_200_response.h
  OAISearchMemes_200_response_memes_inner.h
  OAISearchNews_200_response.h
  OAISearchNews_200_response_news_inner.h
  OAISearchRoyaltyFreeImages_200_response.h
  OAISearchRoyaltyFreeImages_200_response_images_inner.h
  OAISearchRoyaltyFreeImages_200_response_images_inner_license.h
  OAISearchWeb_200_response.h
  OAISearchWeb_200_response_results_inner.h
  OAISingularizeWord_200_response.h
  OAIStoreKeyValueGET_200_response.h
  OAITextStemming_200_response.h
  OAIArtApi.h
  OAIBooksApi.h
  OAIHumorApi.h
  OAIKnowledgeApi.h
  OAIMathApi.h
  OAIMediaApi.h
  OAINewsApi.h
  OAIStorageApi.h
  OAITextApi.h
  OAIWebApi.h
  OAIHelpers.h
  OAIHttpRequest.h
  OAIObject.h
  OAIEnum.h
  OAIHttpFileElement.h
  OAIServerConfiguration.h
  OAIServerVariable.h
  OAIOauth.h
  OAIConvertUnits_200_response.cpp
  OAICorrectSpelling_200_response.cpp
  OAIDetectLanguage_200_response_inner.cpp
  OAIDetectMainImageColor_200_response_inner.cpp
  OAIDetectSentiment_200_response.cpp
  OAIDetectSentiment_200_response_document.cpp
  OAIDetectSentiment_200_response_sentences_inner.cpp
  OAIExtractAuthors_200_response.cpp
  OAIExtractAuthors_200_response_authors_inner.cpp
  OAIExtractContentFromAWebPage_200_response.cpp
  OAIExtractDates_200_response.cpp
  OAIExtractDates_200_response_dates_inner.cpp
  OAIExtractEntities_200_response.cpp
  OAIExtractEntities_200_response_entities_inner.cpp
  OAIExtractNews_200_response.cpp
  OAIExtractPublishDate_200_response.cpp
  OAIFindSimilarBooks_200_response.cpp
  OAIGenerateNonsenseWord_200_response.cpp
  OAIListWordSynonyms_200_response.cpp
  OAIPartOfSpeechTagging_200_response.cpp
  OAIPluralizeWord_200_response.cpp
  OAIRandomMeme_200_response.cpp
  OAIRandomPoem_200_response.cpp
  OAIRandomQuote_200_response.cpp
  OAIRandomTrivia_200_response.cpp
  OAIReadKeyValueFromStore_200_response.cpp
  OAIScoreReadability_200_response.cpp
  OAIScoreText_200_response.cpp
  OAIScoreText_200_response_interestingness.cpp
  OAIScoreText_200_response_interestingness_subscores.cpp
  OAIScoreText_200_response_readability.cpp
  OAIScoreText_200_response_readability_mainscores.cpp
  OAIScoreText_200_response_readability_subscores.cpp
  OAIScoreText_200_response_skimmability.cpp
  OAIScoreText_200_response_skimmability_mainscores.cpp
  OAIScoreText_200_response_skimmability_subscores.cpp
  OAIScoreText_200_response_style.cpp
  OAIScoreText_200_response_style_subscores.cpp
  OAISearchBooks_200_response.cpp
  OAISearchBooks_200_response_books_inner.cpp
  OAISearchGifs_200_response.cpp
  OAISearchGifs_200_response_images_inner.cpp
  OAISearchJokes_200_response.cpp
  OAISearchJokes_200_response_jokes_inner.cpp
  OAISearchMemes_200_response.cpp
  OAISearchMemes_200_response_memes_inner.cpp
  OAISearchNews_200_response.cpp
  OAISearchNews_200_response_news_inner.cpp
  OAISearchRoyaltyFreeImages_200_response.cpp
  OAISearchRoyaltyFreeImages_200_response_images_inner.cpp
  OAISearchRoyaltyFreeImages_200_response_images_inner_license.cpp
  OAISearchWeb_200_response.cpp
  OAISearchWeb_200_response_results_inner.cpp
  OAISingularizeWord_200_response.cpp
  OAIStoreKeyValueGET_200_response.cpp
  OAITextStemming_200_response.cpp
  OAIArtApi.cpp
  OAIBooksApi.cpp
  OAIHumorApi.cpp
  OAIKnowledgeApi.cpp
  OAIMathApi.cpp
  OAIMediaApi.cpp
  OAINewsApi.cpp
  OAIStorageApi.cpp
  OAITextApi.cpp
  OAIWebApi.cpp
  OAIHelpers.cpp
  OAIHttpRequest.cpp
  OAIHttpFileElement.cpp
  OAIOauth.cpp
  )

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Network
        Qt${QT_VERSION_MAJOR}::Gui

)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
)

install(
    FILES ${HEADER_FILES}
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
)

install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)
