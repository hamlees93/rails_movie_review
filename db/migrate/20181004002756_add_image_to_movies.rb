class AddImageToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :image, :string
    Movie.update_all(image: 'https://www.google.com.au/search?biw=1280&bih=690&tbm=isch&sa=1&ei=LGC1W9mwEsmQ0gLinZu4Bw&q=default+landscape&oq=default+landscape&gs_l=img.3..0i24k1.4450.9596.0.9715.17.10.0.7.7.0.284.1105.0j1j4.5.0....0...1c.1.64.img..5.12.1126...0j0i67k1j0i10k1.0.iUftE_HnHQM#imgrc=Icr6OogN6wy58M:')
  end
end
