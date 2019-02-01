#!/usr/bin/env bash

mkdir -p output && rm -f output/nu.{epub,pdf}

bundle exec asciidoctor-pdf -D output nu.asc
bundle exec asciidoctor-epub3 -D output -a ebook-validate nu.asc
bundle exec asciidoctor-epub3 -D output -a ebook-format=kf8 nu.asc
