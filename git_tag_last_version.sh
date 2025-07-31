#!/bin/bash

git_tag_last_version() {
    git describe --tags --abbrev=0
}