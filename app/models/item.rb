class Item < ApplicationRecord
    mount_uploader :item, ItemUploader
    ROOT_URL = "http://127.0.0.1:3000"
    def get_url
        ROOT_URL + self.item_url
    end
end
