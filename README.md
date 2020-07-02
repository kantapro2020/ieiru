# Ieiru（API）
## 概要
一緒に暮らしている人（家族、友人、恋人）が、今家にいるのかいないのかを判別するアプリ（API）
web,android,iOSで開発
リンク：https://github.com/kantapro2020/IeiruForAndroid/blob/master/README.md (Android)
　　　　https://github.com/kantapro2020/IeiruForiOS/blob/master/README.md (iOS)　
　　　　https://github.com/kantapro2020/IeiruForWeb/blob/master/README.md (web)

## 本番環境
http://18.176.193.22/

## 制作背景
現在友人3人と共同生活をしており、各々が在宅であるかどうかを知ることが、ストレスフリーな生活を送るために必要であると考え制作しました。

## 工夫したポイント
•スマートフォンの緯度経度と住まいの緯度経度を比較し、在宅かどうかを判断  
•フォアグランド、バックグランド時の位置情報の取得

## 使用技術
•ruby  
•ruby on rails  
•VScode  
•AWS  

## 課題や今後実装したい技術
実際の私の住まいとデバイスの緯度経度の比較しかできないので、住所登録機能をつけて汎用性を持たせたいと考えております。

## DB設計

### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|longitude|float||
|latitude|float||
|is_home|boolean||
