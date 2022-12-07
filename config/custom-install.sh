#!/bin/bash
apt-get update -y && apt-get upgrade -y \
&& apt-get install -y python3-dev python3-venv python3-wheel python3-setuptools python3-pip pkg-config && apt-get update -y && apt-get upgrade -y \
&& apt-get install -y libxslt-dev libzip-dev libldap2-dev libsasl2-dev && apt-get update -y && apt-get upgrade -y \
&& apt-get install -y libxml2-dev libxmlsec1 libxmlsec1-dev libxmlsec1-openssl && apt-get update -y && apt-get upgrade -y \
&& apt-get install -y libffi-dev build-essential && apt-get update -y && apt-get upgrade -y \
&& apt-get install nodejs npm -y && npm install -g rtlcss && apt-get update -y && apt-get upgrade -y \
&&  pip3 install --upgrade pip wheel "setuptools==58.0.0" \
&& pip install -r /usr/lib/python3/dist-packages/odoo/odoo/requirements.txt \
&& pip install -r /usr/lib/python3/dist-packages/odoo/extra-addons/comunity/bank/requirements.txt \
&& pip install -r /usr/lib/python3/dist-packages/odoo/extra-addons/customers/hubspot/hubspot/requirements.txt \
&& pip install -r /usr/lib/python3/dist-packages/odoo/extra-addons/customers/TrackTraceRx-TTR2/requirements.txt \
&& pip install -r /usr/lib/python3/dist-packages/odoo/extra-addons/localization/brazil/br2/requirements.txt