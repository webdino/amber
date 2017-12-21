# Project Amber
Project Amber: Light weight HTML loader for Project GEM (Gecko Embedded)

## Extension
### How to Use
* Firefox を通常起動
* about:config で xpinstall.signatures.required = false と設定
* [amber.xpi](https://webdino.github.io/amber/amber.xpi) をダウンロード
* アドオンマネージャ (about:addons) で拡張機能パネル (緑のパズルピースアイコン) を開き、歯車ドロップダウンメニューから「Install Add-on From File...」を選択し、ダウンロードした amber.xpi を選択してインストール
* Firefox を一旦終了
* ターミナルで `firefox -chrome chrome://amber/content/` とメインウィンドウとして読み込む XUL ファイルを指定して Firefox を起動

### Build
extension ディレクトリで `./createpackage.sh` を実行すると docs ディレクトリ配下に `amber.xpi` を生成します
