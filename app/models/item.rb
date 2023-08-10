class Item < ApplicationRecord
    #belongs_to :user

    mount_uploader :item, ItemUploader

    if ENV.fetch("RAILS_ENV", "development") == "development"
        ROOT_URL = "http://127.0.0.1:3000"
    elsif ENV.fetch("RAILS_ENV", "production") == "production"
        ROOT_URL = "https://jstore-rails-c3a4c1568d5a.herokuapp.com/"
    end
    def get_url
        ROOT_URL + self.item_url
    end
end
