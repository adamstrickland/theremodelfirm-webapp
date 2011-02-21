require 'spec_helper'

describe "products/new.html.erb" do
  before(:each) do
    assign(:product, stub_model(Product,
      :title => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :price => "9.99",
      :est_install_time_mins => 1
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_title", :name => "product[title]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_image_url", :name => "product[image_url]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "input#product_est_install_time_mins", :name => "product[est_install_time_mins]"
    end
  end
end
