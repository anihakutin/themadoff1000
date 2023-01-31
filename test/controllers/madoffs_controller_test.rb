require "test_helper"

class MadoffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @madoff = madoffs(:one)
  end

  test "should get index" do
    get madoffs_url
    assert_response :success
  end

  test "should get new" do
    get new_madoff_url
    assert_response :success
  end

  test "should create madoff" do
    assert_difference("Madoff.count") do
      post madoffs_url, params: { madoff: { age: @madoff.age, company_name: @madoff.company_name, con: @madoff.con, current_status: @madoff.current_status, name: @madoff.name, upvotes: @madoff.upvotes, wiki_link: @madoff.wiki_link } }
    end

    assert_redirected_to madoff_url(Madoff.last)
  end

  test "should show madoff" do
    get madoff_url(@madoff)
    assert_response :success
  end

  test "should get edit" do
    get edit_madoff_url(@madoff)
    assert_response :success
  end

  test "should update madoff" do
    patch madoff_url(@madoff), params: { madoff: { age: @madoff.age, company_name: @madoff.company_name, con: @madoff.con, current_status: @madoff.current_status, name: @madoff.name, upvotes: @madoff.upvotes, wiki_link: @madoff.wiki_link } }
    assert_redirected_to madoff_url(@madoff)
  end

  test "should destroy madoff" do
    assert_difference("Madoff.count", -1) do
      delete madoff_url(@madoff)
    end

    assert_redirected_to madoffs_url
  end
end
