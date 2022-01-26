# 駐車場降車位置検知システム

## 実装内容

* 言語バージョン
    * Dart 2.15.1
    * Flutter 2.8.1

* プログラム構成
    * MVVM  
      Blocではなく、よりシンプルな Provider + ChangeNotifier を採用しています。  
      MVVMを採用しつつ、フォルダ構成などはClean Architectureを参考にしています。
    * env
        * dev, stg, prdを追加
        * flutter configurationにそれぞれを追加して、各実行環境毎に切り替えられる仕組みにしています。
        * main_dev.dart, main_stg.dart, main.prd.dart
    * 設定ファイル
        * /lib/config/dev
        * /lib/config/stg
        * /lib/config/prd

* コード生成
    * Freezedにより、APIのレスポンスとModelをマッピングするファイルをModel定義から自動生成しています。    
      参考: /lib/domain/models/parking.dart  
      modelファイルを作成後に以下のコマンドを実行
      ```
      flutter packages pub run build_runner build
      ```  
      

* 実装機能
    * 画面レイアウト
        * デザインやボタンの統一
    * API
        * /devices/:uuid  
          lib/data/service_impl/parking_service_impl.dart  
          ※ APIのhostは、設定ファイルで切り替える必要があります。   
          画面上の「API call test」で呼び出すことが可能です。  
          結果は画面およびログに出力しています。
    * BLE
        * Scan test  
          BLEのスキャン実行  
          画面上の「BLE スキャン開始test」で呼び出すことが可能です。  
          結果はログに出力しています。

        * Broadcast test  
          BLEの送信実行  
          画面上の「BLE 送信開始test」で呼び出すことが可能です。  
          結果はログに出力しています。  
