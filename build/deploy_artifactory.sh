#!/usr/bin/env bash
# Copyright 2019 Bull S.A.S. Atos Technologies - Bull, Rue Jean Jaures, B.P.68, 78340, Les Clayes-sous-Bois, France.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rootDir=$(readlink -f "${scriptDir}/..")

if [[ "${GITHUB_ACTIONS}" != "true" ]] ; then
    echo "This script is designed to publish CI build artifacts"
    exit 0
fi

if [[ "${DISABLE_ARTIFACTORY}" == "true" ]] ; then
    echo "Skipping Artifactory publication"
    exit 0
fi

ref="${GITHUB_REF#ref/*/}"

if [[ "${GITHUB_REF}" == ref/tags/* ]] ; then
    deploy_path="forge-product-ystia-dist/ystia/forge/dist/${ref}/{1}"
elif [[ "${GITHUB_REF}" == ref/pull/* ]] ; then
    deploy_path="forge-bin-dev-local/ystia/forge/dist/PR-${ref}/{1}"
else
    deploy_path="forge-bin-dev-local/ystia/forge/dist/${ref}/{1}"
fi

cd "${rootDir}"
jfrog rt u --props="artifactory.licenses=Apache-2.0" --regexp "build/csars/(.*.zip)" "${deploy_path}"
jfrog rt bce
jfrog rt bag
jfrog rt bp
