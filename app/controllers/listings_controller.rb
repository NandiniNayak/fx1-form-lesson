class ListingsController < ApplicationController
    def new
        # generate an instance variable with a new instance of listing that gets passed to the new html file

        # since the listing forms required the breed id as a foreiegn key, pass this info to the form
        @breeds = Breed.all
        # return array of sexes in the listing, which is male and female
        @sexes = Listing.sexes.keys
        @listing = Listing.new
    end

    def create
        puts "------------"
        puts params[:listing]
        # mention what fields coming from the form are allowed on the server side
        listing_params = params.require(:listing).permit(:title,:description,:price,:deposit,:city,:state,:date_of_birth,:diet,:breed_id, :sex)
        @listing = Listing.create(listing_params)
    end
end