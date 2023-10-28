class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    # テーブルの作成
    create_table :posts do |t|
      # カラムの作成
      # t.カラムの型 :カラム名
      t.text :content
      # 元々あるやつ不明
      t.timestamps
    end
  end
end
