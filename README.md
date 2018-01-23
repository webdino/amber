# Project Amber
Project Amber: Light weight HTML loader for Project GEM (Gecko Embedded)

Standard desktop Firefox will require large memory because it includes fat full featured browser UI part (called 'Chrome') on top of Gecko web runtime engine. It's better to use minimal browser application on Gecko for embedded devices since they generally don't require standard browser features such as bookmark, sync, toolbar, even tabs etc. If Gecko support some embedding framework like [GeckoView](https://mykzilla.org/2016/09/14/the-once-and-future-geckoview/) ([meta bug](https://bugzilla.mozilla.org/show_bug.cgi?id=1322573), [Positron (closed project)](https://github.com/mykmelez/positron) or [qbrt](https://github.com/mozilla/qbrt), it require much smaller memory but it's not officially released nor supported by Mozilla yet.

So we're testing and preparing simple way to run Gecko with minimal UI part (means minimal memory) to load simple HTML apps or pages.


## Goal and Non Goal
* we'll try and find the way to load HTML with minimal memory on embedded devices
* we'll not fork Gecko runtime itself


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


## Application

TODO: qbrt のように --app application.ini で起動するタイプでシンプルにする場合についてもサンプルコードを用意して比較検討などする
