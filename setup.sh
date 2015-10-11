#!/bin/bash

aws --profile doismellburning --region eu-west-1 lambda create-function --function-name whereami-write-checkin-to-dynamo --runtime python2.7 --role arn:aws:iam::424951825557:role/whereis.doismellburning.co.uk --handler handler --zip-file fileb://write_checkin_to_dynamo.zip
