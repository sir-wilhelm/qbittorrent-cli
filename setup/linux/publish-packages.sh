#!/bin/bash

PkgVersion="${BUILD_BUILDNUMBER%.*}"
PkgIteration="${BUILD_BUILDNUMBER##*.}"

#Upload Debian packages
curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/trusty/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=trusty;deb_distribution=jessie;deb_component=main;deb_architecture=amd64"
curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/xenial/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=xenial;deb_component=main;deb_architecture=amd64"
curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/artful/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=artful;deb_distribution=stretch;deb_component=main;deb_architecture=amd64"
curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/bionic/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=bionic;deb_component=main;deb_architecture=amd64"

curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/trusty/qbittorrent-cli_$PkgVersion-${PkgIteration}_armhf.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=trusty;deb_distribution=jessie;deb_component=main;deb_architecture=armhf"
curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/xenial/qbittorrent-cli_$PkgVersion-${PkgIteration}_armhf.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=xenial;deb_component=main;deb_architecture=armhf"
curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/artful/qbittorrent-cli_$PkgVersion-${PkgIteration}_armhf.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=artful;deb_distribution=stretch;deb_component=main;deb_architecture=armhf"
curl -T "$BUILD_BINARIESDIRECTORY/pkg/ubuntu/bionic/qbittorrent-cli_$PkgVersion-${PkgIteration}_armhf.deb" "-ufedarovich:$1" "https://api.bintray.com/content/fedarovich/qbittorrent-cli/qbittorrent-cli/$PkgVersion/qbittorrent-cli_$PkgVersion-${PkgIteration}_amd64.deb;deb_distribution=bionic;deb_component=main;deb_architecture=armhf"
