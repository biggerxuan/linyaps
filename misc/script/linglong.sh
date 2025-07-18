#!/usr/bin/env sh

# SPDX-FileCopyrightText: 2023-2025 UnionTech Software Technology Co., Ltd.
#
# SPDX-License-Identifier: LGPL-3.0-or-later

# shellcheck shell=sh

# Profile.d script for linglong/linyaps
# This script sources the XDG_DATA_DIRS generation script and exports
# the modified XDG_DATA_DIRS environment variable for user sessions.

source_script="@CMAKE_INSTALL_PREFIX@/lib/linglong/generate-xdg-data-dirs.sh"

# Source the script and export XDG_DATA_DIRS if successful
[ -r "${source_script}" ] && . "${source_script}" && [ -n "${XDG_DATA_DIRS}" ] && export XDG_DATA_DIRS
