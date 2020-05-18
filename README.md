# gcs_uploader

## GCSの構成管理

```sh
$ docker-compose run --rm terraform plan -out tfplan
$ docker-compose run --rm terraform apply "tfplan"
```

## GCSへのアップロード実行

以下の環境変数を設定する

* `SRC_PATH`
* `BUCKET_NAME`

```sh
$ docker-compose run --rm gcloud bin/upload.sh
```
