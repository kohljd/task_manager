require "rails_helper"

RSpec.describe Task, type: :model do
    describe "instance methods" do
        describe "#laundry?" do
            it "returns true when the title is laundry" do
                task = Task.create!(title: "laundry", description: "clean clothes")
                expect(task.laundry?).to be true
            end

            it "returns true if description contains 'laundry'" do
                task = Task.create!(title: "clean", description: "pants laundry")
                expect(task.laundry?).to be true
            end

            it "returns false when neither title nor description contains 'laundry'" do
                task = Task.create!(title: "clean", description: "kitchen")
                expect(task.laundry?).to be false
            end

            it "is case insensitive when checking if the title contains 'laundry'" do
                task = Task.create!(title: "Laundry", description: "clean clothes")
                expect(task.laundry?).to be true
            end

            it "is case insensitive when checking description for 'laundry'" do
                task = Task.create!(title: "clean", description: "pants LAUndry")
                expect(task.laundry?).to be true
            end
        end
    end
end