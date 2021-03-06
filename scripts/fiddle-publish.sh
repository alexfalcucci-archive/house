#!/usr/bin/env bash

_publishPath='/Users/bradyhouse/openshift/nine/static/fiddles';
_sourcePath='/Users/bradyhouse/github/house/fiddles';


function cprf() {
    cp -rf $1 ${_publishPath};
    if [[ -d "${_publishPath}/$1/libs" ]]
    then
        rm -rf "${_publishPath}/$1/libs";
    fi
}

function rmrf() {
  if [[ -d "$1" ]]
  then
    rm -rf "$1";
  fi
}


cd ${_publishPath};

rmrf angular2;
rmrf three;
rmrf extjs5;
rmrf d3;
rmrf dojo;
rmrf jquery;
rmrf aurelia;
rmrf tween;
rmrf svg;
rmrf resources;
rmrf rxjs;
rmrf index.html;
rmrf .gitignore;

cd ${_sourcePath};

cprf angular2;
cprf three;
cprf extjs5;
cprf d3;
cprf dojo;
cprf jquery;
cprf aurelia;
cprf tween;
cprf svg;
cprf rxjs;
cprf resources;
cprf index.html;

cd ..

cprf .gitignore;
