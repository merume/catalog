#language: ja
フィーチャ: トップページで商品カタログを閲覧できること

  シナリオ: 登録商品を一覧できること
    前提 以下の商品が登録されている:
      | 商品名 | 説明 | 価格 |
      | テスト商品1 | てすとです | 1000 |
      | テスト商品2 | てすとです | 100 |
      | テスト商品3 | てすとです | 2000 |
    もし トップページを表示する
    ならば 以下の商品が表示されていること:
    | 商品名 |
    | テスト商品1 |
    | テスト商品2 |
    | テスト商品3 |