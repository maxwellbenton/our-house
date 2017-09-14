require 'test_helper'

class HouseImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house_image = house_images(:one)
  end

  test "should get index" do
    get house_images_url
    assert_response :success
  end

  test "should get new" do
    get new_house_image_url
    assert_response :success
  end

  test "should create house_image" do
    assert_difference('HouseImage.count') do
      post house_images_url, params: { house_image: { score: @house_image.score, section_id: @house_image.section_id, tags: @house_image.tags, url: @house_image.url } }
    end

    assert_redirected_to house_image_url(HouseImage.last)
  end

  test "should show house_image" do
    get house_image_url(@house_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_house_image_url(@house_image)
    assert_response :success
  end

  test "should update house_image" do
    patch house_image_url(@house_image), params: { house_image: { score: @house_image.score, section_id: @house_image.section_id, tags: @house_image.tags, url: @house_image.url } }
    assert_redirected_to house_image_url(@house_image)
  end

  test "should destroy house_image" do
    assert_difference('HouseImage.count', -1) do
      delete house_image_url(@house_image)
    end

    assert_redirected_to house_images_url
  end
end
