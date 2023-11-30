require "test_helper"

class PicsControllerTest < ActionDispatch::IntegrationTest
  
  test "index" do
    get "/pics.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Pic.count, data.length
  end  

  test "create" do
    assert_difference "Pic.count", 1 do
      post "/pics.json", params: { name: "lake", url: "test.png", description: "text here" }
      assert_response 200
    end
  end

  test "show" do
    get "/pics/#{Pic.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "url", "description", "native_region"], data.keys
  end

  test "update" do
    pic = Pic.first
    patch "/pics/#{pic.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end


  test "destroy" do
    assert_difference "Pic.count", -1 do
      delete "/pics/#{Pic.first.id}.json"
      assert_response 200
    end
  end

end
