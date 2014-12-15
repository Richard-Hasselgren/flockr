class App < Sinatra::Base
  enable :sessions

  use Rack::Flash

  get '/tags/*' do
    tags = params[:splat].first.split('/')

    @all_images = tags.map { |tag| Tag.first(name: tag).images }
    @images_with_all_tags = @all_images.inject(:&)

    slim :tags
  end

  get '/image/:id' do |id|
    @image = Image.get(id)
    slim :image
  end

  post '/rate/image/:id' do |id|
    image = Image.get(id)
    rating = Rating.new(image: image, value: params['rating'].to_i)
    if rating.valid?
      rating.save
    else
      flash[:error] = rating.errors.full_messages
    end
    redirect "/image/#{id}"
  end

end