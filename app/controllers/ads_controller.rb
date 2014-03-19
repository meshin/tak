class AdsController < ApplicationController
  def index
    @ads = Ad.all
  end

  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
    @ad.images.build
    #4.times{ @ad.images.build }
  end

  def create
    @ad = Ad.new(params[:ad])
    if @ad.save
      redirect_to @ad, :notice => "Successfully created ad."
    else
      render :action => 'new'
    end
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(params[:ad])

      File.open(Rails.root.join('public', 'tags', "meshin.js"), "w") do |file|
        file.puts "var items = '#{@ad.items.count}';"
        file.puts "var h_href = '#{@ad.link}';"
        file.puts "var h_img = '#{@ad.images.first.file.header.url}';"
        file.puts "var h_title = '#{@ad.title}';"
        @ad.items.each_with_index do |item, index|
          file.puts "var title#{index} = '#{item.title}';"
          file.puts "var href#{index} = '#{item.link}';"
          file.puts "var img#{index} = '#{item.file.crop.url}';"
          file.puts "var text#{index} = '#{item.link}';"
        end
        File.foreach(Rails.root.join('public', 'tags', "template.js")) do |li|
          file.puts li
        end
      end

      redirect_to @ad, :notice  => "Successfully updated ad."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to ads_url, :notice => "Successfully destroyed ad."
  end
end
