cmake_minimum_required(VERSION 3.2)

project(client)
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

if (MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
else ()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC -Wall -Wno-unused-variable")
endif ()

find_package(Qt5Core REQUIRED)
find_package(Qt5Network REQUIRED)

add_library(${PROJECT_NAME}
    OAIInline_response_200.cpp
    OAIInline_response_200_1.cpp
    OAIInline_response_200_10.cpp
    OAIInline_response_200_11.cpp
    OAIInline_response_200_12.cpp
    OAIInline_response_200_13.cpp
    OAIInline_response_200_14.cpp
    OAIInline_response_200_14_authors.cpp
    OAIInline_response_200_15.cpp
    OAIInline_response_200_15_results.cpp
    OAIInline_response_200_16.cpp
    OAIInline_response_200_17.cpp
    OAIInline_response_200_18.cpp
    OAIInline_response_200_18_document.cpp
    OAIInline_response_200_18_sentences.cpp
    OAIInline_response_200_19.cpp
    OAIInline_response_200_19_interestingness.cpp
    OAIInline_response_200_19_interestingness_subscores.cpp
    OAIInline_response_200_19_readability.cpp
    OAIInline_response_200_19_readability_mainscores.cpp
    OAIInline_response_200_19_readability_subscores.cpp
    OAIInline_response_200_19_skimmability.cpp
    OAIInline_response_200_19_skimmability_mainscores.cpp
    OAIInline_response_200_19_skimmability_subscores.cpp
    OAIInline_response_200_19_style.cpp
    OAIInline_response_200_19_style_subscores.cpp
    OAIInline_response_200_2.cpp
    OAIInline_response_200_20.cpp
    OAIInline_response_200_21.cpp
    OAIInline_response_200_21_dates.cpp
    OAIInline_response_200_22.cpp
    OAIInline_response_200_23.cpp
    OAIInline_response_200_24.cpp
    OAIInline_response_200_25.cpp
    OAIInline_response_200_26.cpp
    OAIInline_response_200_27.cpp
    OAIInline_response_200_27_entities.cpp
    OAIInline_response_200_28.cpp
    OAIInline_response_200_28_images.cpp
    OAIInline_response_200_28_license.cpp
    OAIInline_response_200_29.cpp
    OAIInline_response_200_2_news.cpp
    OAIInline_response_200_3.cpp
    OAIInline_response_200_30.cpp
    OAIInline_response_200_31.cpp
    OAIInline_response_200_32.cpp
    OAIInline_response_200_4.cpp
    OAIInline_response_200_4_jokes.cpp
    OAIInline_response_200_5.cpp
    OAIInline_response_200_5_memes.cpp
    OAIInline_response_200_6.cpp
    OAIInline_response_200_7.cpp
    OAIInline_response_200_7_images.cpp
    OAIInline_response_200_8.cpp
    OAIInline_response_200_9.cpp
    OAIInline_response_200_books.cpp
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
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Network)
if(NOT APPLE)
  target_link_libraries(${PROJECT_NAME} PRIVATE ssl crypto)
endif()

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 14)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_EXTENSIONS OFF)

install(TARGETS ${PROJECT_NAME} RUNTIME DESTINATION bin LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
