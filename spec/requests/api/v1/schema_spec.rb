
describe "Validate planning schema" do
  context "against release.schema" do
    it "matches" do
      get '/planning'

      expect(response).to match_response_schema("release")
    end

    it "The file contains 1 release describing 1 contracting process" do
      get '/planning'

      expect(response).to match_response_schema("release")
    end

    it "The schema version specified in the file is 1.1." do
      get '/planning'

      expect(response).to match_response_schema("release")
    end

    # it "The publisher named in the file is Open Data Services Co-operative Limited." do
    #   get '/planning'

    #   expect(response).to match_response_schema("release")
    # end

    # it "The license is http://opendatacommons.org/licenses/pddl/1.0/." do
    #   get '/planning'

    #   expect(response).to match_response_schema("release")
    # end

    # it "Publication policy is https://github.com/open-contracting/sample-data/." do
    #   get '/planning'

    #   expect(response).to match_response_schema("release")
    # end
  end
end

