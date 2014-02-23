require 'spec_helper'

describe "Static pages" do
#RSpecはダブルクオーテーションで囲まれた文字列を無視する

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      #Capybaraのvisit機能を使ってURLへのアクセスをシュミレーション
      expect(page).to have_content('Sample App')
      #Capybaraのpage変数を使ってアクセス結果のページに正しいコンテンツが表示されているかテスト
    end
    it "shoud have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end