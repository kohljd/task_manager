class Task < ApplicationRecord
    def laundry?
        self.title.downcase == "laundry" || self.description.downcase.include?("laundry")
    end
end