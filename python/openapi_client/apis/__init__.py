
# flake8: noqa

# Import all APIs into this package.
# If you have many APIs here with many many models used in each API this may
# raise a `RecursionError`.
# In order to avoid this, import only the API that you directly need like:
#
#   from .api.art_api import ArtApi
#
# or import this package, but before doing it, use:
#
#   import sys
#   sys.setrecursionlimit(n)

# Import APIs into API package:
from com.apileague.art_api import ArtApi
from com.apileague.books_api import BooksApi
from com.apileague.humor_api import HumorApi
from com.apileague.knowledge_api import KnowledgeApi
from com.apileague.math_api import MathApi
from com.apileague.media_api import MediaApi
from com.apileague.news_api import NewsApi
from com.apileague.storage_api import StorageApi
from com.apileague.text_api import TextApi
from com.apileague.web_api import WebApi
