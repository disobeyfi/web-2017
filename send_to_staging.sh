#!/bin/bash

SECRET_STAGING_SERVER=internal.obeycorp.com

rsync -v static/* $SECRET_STAGING_SERVER:/var/disobey-virtualenv/disobey-cms/disobey/static/
scp disobey_rc3_template.html $SECRET_STAGING_SERVER:/var/disobey-virtualenv/disobey-cms/disobey/templates/
