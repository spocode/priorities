import os
import sys
import cgi
import bottle
import pymongo
from pymongo import MongoClient

bottle.debug(True)
client = MongoClient(os.environ['MONGOLAB_URI'])
mongo_db = client.get_default_database()

db = mongo_db.priorities
    # return {"results":[1,2,3]}


cursor = db.find()
# results = []
# for result in cursor:
#     results.append(result)
# return dict(results=results)

counts = {}
for result in cursor:
    print repr(result['priorities_list'])

    for i, issue in enumerate(result['priorities_list']):
        try:
            counts[issue] += i+1
        except:
            counts[issue] = i+1


print repr(counts)
