class AddBackgroundUrlToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :background_url, :string, default: 'https://unsplash.it/g/1280/720'
  end
end
