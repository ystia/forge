#!/usr/bin/env bash
# Copyright 2018 Bull S.A.S. Atos Technologies - Bull, Rue Jean Jaures, B.P.68, 78340, Les Clayes-sous-Bois, France.
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


#set -x
#set -e

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
root_dir="$(readlink -f "${script_dir}/..")"

version="$(cat ${root_dir}/versions.yaml | grep forge_version | awk '{print $2}')"

csar_dir="${script_dir}/csars"

rm -fr ${csar_dir}
mkdir -p ${csar_dir}

find ${root_dir} -type f \( -name 'types.yml' -o -name 'types.yaml' \) -exec bash -c "cd \$(dirname {}); rm -f types.zip; zip -r ${csar_dir}/\$(dirname {} | sed -e "s@${root_dir}/@@" |tr '/' '-')-types-${version}.zip ." \;

cd ${csar_dir}
zip all-types-${version}.zip *.zip
