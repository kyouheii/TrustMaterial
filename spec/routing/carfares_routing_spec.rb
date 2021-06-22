require "rails_helper"

RSpec.describe CarfaresController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/carfares").to route_to("carfares#index")
    end

    it "routes to #new" do
      expect(get: "/carfares/new").to route_to("carfares#new")
    end

    it "routes to #show" do
      expect(get: "/carfares/1").to route_to("carfares#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/carfares/1/edit").to route_to("carfares#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/carfares").to route_to("carfares#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/carfares/1").to route_to("carfares#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/carfares/1").to route_to("carfares#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/carfares/1").to route_to("carfares#destroy", id: "1")
    end
  end
end
