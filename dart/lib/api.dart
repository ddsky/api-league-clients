//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/art_api.dart';
part 'api/books_api.dart';
part 'api/humor_api.dart';
part 'api/knowledge_api.dart';
part 'api/math_api.dart';
part 'api/media_api.dart';
part 'api/news_api.dart';
part 'api/storage_api.dart';
part 'api/text_api.dart';
part 'api/web_api.dart';

part 'model/inline_response200.dart';
part 'model/inline_response2001.dart';
part 'model/inline_response20010.dart';
part 'model/inline_response20011.dart';
part 'model/inline_response20012.dart';
part 'model/inline_response20013.dart';
part 'model/inline_response20014.dart';
part 'model/inline_response20014_authors.dart';
part 'model/inline_response20015.dart';
part 'model/inline_response20015_results.dart';
part 'model/inline_response20016.dart';
part 'model/inline_response20017.dart';
part 'model/inline_response20018.dart';
part 'model/inline_response20018_document.dart';
part 'model/inline_response20018_sentences.dart';
part 'model/inline_response20019.dart';
part 'model/inline_response20019_interestingness.dart';
part 'model/inline_response20019_interestingness_subscores.dart';
part 'model/inline_response20019_readability.dart';
part 'model/inline_response20019_readability_mainscores.dart';
part 'model/inline_response20019_readability_subscores.dart';
part 'model/inline_response20019_skimmability.dart';
part 'model/inline_response20019_skimmability_mainscores.dart';
part 'model/inline_response20019_skimmability_subscores.dart';
part 'model/inline_response20019_style.dart';
part 'model/inline_response20019_style_subscores.dart';
part 'model/inline_response2002.dart';
part 'model/inline_response20020.dart';
part 'model/inline_response20021.dart';
part 'model/inline_response20021_dates.dart';
part 'model/inline_response20022.dart';
part 'model/inline_response20023.dart';
part 'model/inline_response20024.dart';
part 'model/inline_response20025.dart';
part 'model/inline_response20026.dart';
part 'model/inline_response20027.dart';
part 'model/inline_response20027_entities.dart';
part 'model/inline_response20028.dart';
part 'model/inline_response20028_images.dart';
part 'model/inline_response20028_license.dart';
part 'model/inline_response20029.dart';
part 'model/inline_response2002_news.dart';
part 'model/inline_response2003.dart';
part 'model/inline_response20030.dart';
part 'model/inline_response20031.dart';
part 'model/inline_response20032.dart';
part 'model/inline_response2004.dart';
part 'model/inline_response2004_jokes.dart';
part 'model/inline_response2005.dart';
part 'model/inline_response2005_memes.dart';
part 'model/inline_response2006.dart';
part 'model/inline_response2007.dart';
part 'model/inline_response2007_images.dart';
part 'model/inline_response2008.dart';
part 'model/inline_response2009.dart';
part 'model/inline_response200_books.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
