# 機械語・アセンブリファイル集

このリポジトリは、機械語（バイナリ/HEX形式）およびアセンブリ言語のサンプルファイルをまとめたものです。  
主にx86アセンブリやC言語による簡単なプログラム例が含まれています。

## ディレクトリ構成

- `code/`  
  C言語やアセンブリのソース、HEXファイルなどのサンプルを格納しています。
- `code1/`  
  アセンブリのオブジェクトファイルやソースファイルを格納しています。
- `2/`  
  機械語（HEX形式）のサンプルを格納しています。
- ルート直下  
  各種HEXファイルやアセンブリソース、PDF資料などがあります。

## 主なファイル

- `hello.c`  
  C言語による「Hello, world」プログラム。
- `hello.s`  
  アセンブリによる標準出力プログラム。
- `sort.s`  
  配列のソートを行うアセンブリプログラム。
- 各種 `.hex` ファイル  
  機械語（バイナリ）形式のサンプル。

## ビルド・実行例

### C言語ファイルのビルド

```sh
gcc [hello.c](http://_vscodecontentref_/0) -o code/hello
./code/hello