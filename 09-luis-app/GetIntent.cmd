@echo off

rem Set values for your Language Understanding app
set app_id=864aca60-c711-4c1d-87db-d1f7b1ed4134
set endpoint=https://raj713335lan.cognitiveservices.azure.com/
set key=416158f1304a4d65aafcbcecc385bd27

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"