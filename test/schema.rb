ActiveRecord::Schema.define(:version => 1) do
  create_table :posts do |t|
    t.string :token
    t.string :slug
  end
end
