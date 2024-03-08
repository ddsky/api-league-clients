/**
 * API League
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#ifndef OAI_OAITextApi_H
#define OAI_OAITextApi_H

#include "OAIHelpers.h"
#include "OAIHttpRequest.h"
#include "OAIServerConfiguration.h"
#include "OAIOauth.h"

#include "OAICorrectSpelling_200_response.h"
#include "OAIDetectLanguage_200_response_inner.h"
#include "OAIDetectSentiment_200_response.h"
#include "OAIExtractDates_200_response.h"
#include "OAIExtractEntities_200_response.h"
#include "OAIListWordSynonyms_200_response.h"
#include "OAIPartOfSpeechTagging_200_response.h"
#include "OAIPluralizeWord_200_response.h"
#include "OAIScoreReadability_200_response.h"
#include "OAIScoreText_200_response.h"
#include "OAISingularizeWord_200_response.h"
#include "OAITextStemming_200_response.h"
#include <QString>

#include <QObject>
#include <QByteArray>
#include <QStringList>
#include <QList>
#include <QNetworkAccessManager>

namespace OpenAPI {

class OAITextApi : public QObject {
    Q_OBJECT

public:
    OAITextApi(const int timeOut = 0);
    ~OAITextApi();

    void initializeServerConfigs();
    int setDefaultServerValue(int serverIndex,const QString &operation, const QString &variable,const QString &val);
    void setServerIndex(const QString &operation, int serverIndex);
    void setApiKey(const QString &apiKeyName, const QString &apiKey);
    void setBearerToken(const QString &token);
    void setUsername(const QString &username);
    void setPassword(const QString &password);
    void setTimeOut(const int timeOut);
    void setWorkingDirectory(const QString &path);
    void setNetworkAccessManager(QNetworkAccessManager* manager);
    int addServerConfiguration(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables = QMap<QString, OAIServerVariable>());
    void setNewServerForAllOperations(const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void setNewServer(const QString &operation, const QUrl &url, const QString &description = "", const QMap<QString, OAIServerVariable> &variables =  QMap<QString, OAIServerVariable>());
    void addHeaders(const QString &key, const QString &value);
    void enableRequestCompression();
    void enableResponseCompression();
    void abortRequests();
    QString getParamStylePrefix(const QString &style);
    QString getParamStyleSuffix(const QString &style);
    QString getParamStyleDelimiter(const QString &style, const QString &name, bool isExplode);

    /**
    * @param[in]  text QString [required]
    * @param[in]  language QString [required]
    */
    void correctSpelling(const QString &text, const QString &language);

    /**
    * @param[in]  text QString [required]
    */
    void detectLanguage(const QString &text);

    /**
    * @param[in]  text QString [required]
    */
    void detectSentiment(const QString &text);

    /**
    * @param[in]  text QString [required]
    */
    void extractDates(const QString &text);

    /**
    * @param[in]  text QString [required]
    */
    void extractEntities(const QString &text);

    /**
    * @param[in]  word QString [required]
    */
    void listWordSynonyms(const QString &word);

    /**
    * @param[in]  text QString [required]
    */
    void partOfSpeechTagging(const QString &text);

    /**
    * @param[in]  word QString [required]
    */
    void pluralizeWord(const QString &word);

    /**
    * @param[in]  text QString [required]
    */
    void scoreReadability(const QString &text);

    /**
    * @param[in]  title QString [required]
    * @param[in]  text QString [required]
    */
    void scoreText(const QString &title, const QString &text);

    /**
    * @param[in]  word QString [required]
    */
    void singularizeWord(const QString &word);

    /**
    * @param[in]  text QString [required]
    */
    void textStemming(const QString &text);


private:
    QMap<QString,int> _serverIndices;
    QMap<QString,QList<OAIServerConfiguration>> _serverConfigs;
    QMap<QString, QString> _apiKeys;
    QString _bearerToken;
    QString _username;
    QString _password;
    int _timeOut;
    QString _workingDirectory;
    QNetworkAccessManager* _manager;
    QMap<QString, QString> _defaultHeaders;
    bool _isResponseCompressionEnabled;
    bool _isRequestCompressionEnabled;
    OAIHttpRequestInput _latestInput;
    OAIHttpRequestWorker *_latestWorker;
    QStringList _latestScope;
    OauthCode _authFlow;
    OauthImplicit _implicitFlow;
    OauthCredentials _credentialFlow;
    OauthPassword _passwordFlow;
    int _OauthMethod = 0;

    void correctSpellingCallback(OAIHttpRequestWorker *worker);
    void detectLanguageCallback(OAIHttpRequestWorker *worker);
    void detectSentimentCallback(OAIHttpRequestWorker *worker);
    void extractDatesCallback(OAIHttpRequestWorker *worker);
    void extractEntitiesCallback(OAIHttpRequestWorker *worker);
    void listWordSynonymsCallback(OAIHttpRequestWorker *worker);
    void partOfSpeechTaggingCallback(OAIHttpRequestWorker *worker);
    void pluralizeWordCallback(OAIHttpRequestWorker *worker);
    void scoreReadabilityCallback(OAIHttpRequestWorker *worker);
    void scoreTextCallback(OAIHttpRequestWorker *worker);
    void singularizeWordCallback(OAIHttpRequestWorker *worker);
    void textStemmingCallback(OAIHttpRequestWorker *worker);

Q_SIGNALS:

    void correctSpellingSignal(OAICorrectSpelling_200_response summary);
    void detectLanguageSignal(QList<OAIDetectLanguage_200_response_inner> summary);
    void detectSentimentSignal(OAIDetectSentiment_200_response summary);
    void extractDatesSignal(OAIExtractDates_200_response summary);
    void extractEntitiesSignal(OAIExtractEntities_200_response summary);
    void listWordSynonymsSignal(OAIListWordSynonyms_200_response summary);
    void partOfSpeechTaggingSignal(OAIPartOfSpeechTagging_200_response summary);
    void pluralizeWordSignal(OAIPluralizeWord_200_response summary);
    void scoreReadabilitySignal(OAIScoreReadability_200_response summary);
    void scoreTextSignal(OAIScoreText_200_response summary);
    void singularizeWordSignal(OAISingularizeWord_200_response summary);
    void textStemmingSignal(OAITextStemming_200_response summary);

    void correctSpellingSignalFull(OAIHttpRequestWorker *worker, OAICorrectSpelling_200_response summary);
    void detectLanguageSignalFull(OAIHttpRequestWorker *worker, QList<OAIDetectLanguage_200_response_inner> summary);
    void detectSentimentSignalFull(OAIHttpRequestWorker *worker, OAIDetectSentiment_200_response summary);
    void extractDatesSignalFull(OAIHttpRequestWorker *worker, OAIExtractDates_200_response summary);
    void extractEntitiesSignalFull(OAIHttpRequestWorker *worker, OAIExtractEntities_200_response summary);
    void listWordSynonymsSignalFull(OAIHttpRequestWorker *worker, OAIListWordSynonyms_200_response summary);
    void partOfSpeechTaggingSignalFull(OAIHttpRequestWorker *worker, OAIPartOfSpeechTagging_200_response summary);
    void pluralizeWordSignalFull(OAIHttpRequestWorker *worker, OAIPluralizeWord_200_response summary);
    void scoreReadabilitySignalFull(OAIHttpRequestWorker *worker, OAIScoreReadability_200_response summary);
    void scoreTextSignalFull(OAIHttpRequestWorker *worker, OAIScoreText_200_response summary);
    void singularizeWordSignalFull(OAIHttpRequestWorker *worker, OAISingularizeWord_200_response summary);
    void textStemmingSignalFull(OAIHttpRequestWorker *worker, OAITextStemming_200_response summary);

    Q_DECL_DEPRECATED_X("Use correctSpellingSignalError() instead")
    void correctSpellingSignalE(OAICorrectSpelling_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void correctSpellingSignalError(OAICorrectSpelling_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use detectLanguageSignalError() instead")
    void detectLanguageSignalE(QList<OAIDetectLanguage_200_response_inner> summary, QNetworkReply::NetworkError error_type, QString error_str);
    void detectLanguageSignalError(QList<OAIDetectLanguage_200_response_inner> summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use detectSentimentSignalError() instead")
    void detectSentimentSignalE(OAIDetectSentiment_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void detectSentimentSignalError(OAIDetectSentiment_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use extractDatesSignalError() instead")
    void extractDatesSignalE(OAIExtractDates_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void extractDatesSignalError(OAIExtractDates_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use extractEntitiesSignalError() instead")
    void extractEntitiesSignalE(OAIExtractEntities_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void extractEntitiesSignalError(OAIExtractEntities_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use listWordSynonymsSignalError() instead")
    void listWordSynonymsSignalE(OAIListWordSynonyms_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void listWordSynonymsSignalError(OAIListWordSynonyms_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use partOfSpeechTaggingSignalError() instead")
    void partOfSpeechTaggingSignalE(OAIPartOfSpeechTagging_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void partOfSpeechTaggingSignalError(OAIPartOfSpeechTagging_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use pluralizeWordSignalError() instead")
    void pluralizeWordSignalE(OAIPluralizeWord_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void pluralizeWordSignalError(OAIPluralizeWord_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use scoreReadabilitySignalError() instead")
    void scoreReadabilitySignalE(OAIScoreReadability_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void scoreReadabilitySignalError(OAIScoreReadability_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use scoreTextSignalError() instead")
    void scoreTextSignalE(OAIScoreText_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void scoreTextSignalError(OAIScoreText_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use singularizeWordSignalError() instead")
    void singularizeWordSignalE(OAISingularizeWord_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void singularizeWordSignalError(OAISingularizeWord_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use textStemmingSignalError() instead")
    void textStemmingSignalE(OAITextStemming_200_response summary, QNetworkReply::NetworkError error_type, QString error_str);
    void textStemmingSignalError(OAITextStemming_200_response summary, QNetworkReply::NetworkError error_type, const QString &error_str);

    Q_DECL_DEPRECATED_X("Use correctSpellingSignalErrorFull() instead")
    void correctSpellingSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void correctSpellingSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use detectLanguageSignalErrorFull() instead")
    void detectLanguageSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void detectLanguageSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use detectSentimentSignalErrorFull() instead")
    void detectSentimentSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void detectSentimentSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use extractDatesSignalErrorFull() instead")
    void extractDatesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void extractDatesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use extractEntitiesSignalErrorFull() instead")
    void extractEntitiesSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void extractEntitiesSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use listWordSynonymsSignalErrorFull() instead")
    void listWordSynonymsSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void listWordSynonymsSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use partOfSpeechTaggingSignalErrorFull() instead")
    void partOfSpeechTaggingSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void partOfSpeechTaggingSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use pluralizeWordSignalErrorFull() instead")
    void pluralizeWordSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void pluralizeWordSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use scoreReadabilitySignalErrorFull() instead")
    void scoreReadabilitySignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void scoreReadabilitySignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use scoreTextSignalErrorFull() instead")
    void scoreTextSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void scoreTextSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use singularizeWordSignalErrorFull() instead")
    void singularizeWordSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void singularizeWordSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);
    Q_DECL_DEPRECATED_X("Use textStemmingSignalErrorFull() instead")
    void textStemmingSignalEFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, QString error_str);
    void textStemmingSignalErrorFull(OAIHttpRequestWorker *worker, QNetworkReply::NetworkError error_type, const QString &error_str);

    void abortRequestsSignal();
    void allPendingRequestsCompleted();

public Q_SLOTS:
    void tokenAvailable();
};

} // namespace OpenAPI
#endif