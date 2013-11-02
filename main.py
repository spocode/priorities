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
    # resp = twilio.twiml.Response()
    post_response = {x: y for x, y in bottle.request.forms.iteritems()}
    db.insert(post_response)
    bottle.redirect("/results/")


@bottle.route('/results/', method="get")
@bottle.view('results')
def display_txts():
    db = mongo_db.priorities
    return {"results":[1,2,3]}


    # try:
    #     # cursor = db.find({"To":To}, limit=10).sort("_id", pymongo.DESCENDING)
    #     # messages = []
    #     # for message in cursor:
    #     #     messages.append(message)

    #     #     #str(cursor["_id"].generation_time)
    #     # return dict(messages=messages, To=To)


    # except:
    #     bottle.abort(404, "Sorry, nothing found")


# counter = mongo_db.counter.find_one()


port = int(os.environ.get("PORT", 5000))
bottle.run(server="waitress", host="0.0.0.0", port=port, reloader=True)
