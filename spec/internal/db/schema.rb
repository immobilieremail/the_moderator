ActiveRecord::Schema.define do
  create_table :categories, :force => true do |t|
    t.string :name
    t.timestamps
  end

  create_table :pages, :force => true do |t|
    t.integer :category_id
    t.string :name
    t.text   :content
    t.timestamps
  end

  create_table :links, :force => true do |t|
    t.integer :page_id
    t.string :name
    t.string :url
    t.timestamps
  end

  create_table :moderations, :force => true do |t|
    t.integer  :moderatable_id
    t.string   :moderatable_type
    t.text     :data
    t.text :data_display
    t.timestamps
  end
end
