@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=66891545-5f2f-4a23-ae99-6b8b4d72e1b8
set azure_storage_account=storage713335
set azure_storage_key=AwxILK1FGA/cSWhseS3HQPnELxWhwHsHtiWijd+8Lb5stVK7va10jolbjDg1eL5h6vjitmGDiZhN+AStxMvB8Q==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
