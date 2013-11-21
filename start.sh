#!/bin/sh
ps ax | grep beam.smp | awk '{print $1}' | xargs kill -9
rebar compile
erl -pa ebin ./*/ebin  -s fy_engine_app -s reloader

