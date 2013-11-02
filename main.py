#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os
import sys
import cgi
import bottle
import pymongo
from pymongo import MongoClient

bottle.debug(True)
client = MongoClient(os.environ['MONGOLAB_URI'])
mongo_db = client.get_default_database()


@bottle.route('/', method="get")
@bottle.view('priorities')
def index():
    return dict(name=None)


@bottle.route('/static/<filepath:path>')
def server_static(filepath):
    return bottle.static_file(filepath, root='static/')


@bottle.route('/vote/', method="post")
def recieve_txts():
    db = mongo_db.priorities

    post_response = {
        "status": bottle.request.forms.get('status'),
        "zip": bottle.request.forms.get('zip'),
        "priorities_list": bottle.request.forms.get('priorities_list').split(","),
        "years": bottle.request.forms.get('years')
    }
    insert = db.insert(post_response)
    # return repr(insert)
    bottle.redirect("/results/")




@bottle.route('/results/', method="get")
@bottle.view('results')
def display_txts():
    db = mongo_db.priorities
    # return {"results":[1,2,3]}


    try:
        cursor = db.find()
        counts = {}
        for result in cursor:
            # print repr(result['priorities_list'])

            for i, issue in enumerate(result['priorities_list']):
                try:
                    counts[issue] += 1.0/(i+1)
                except:
                    counts[issue] = 1.0/(i+1)


        return dict(results=counts)
    except Exception as e:
        bottle.abort(500, e)



port = int(os.environ.get("PORT", 5000))
bottle.run(server="waitress", host="0.0.0.0", port=port, reloader=True)
