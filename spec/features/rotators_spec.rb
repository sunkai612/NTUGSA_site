require 'rails_helper'

feature "Rotators", :type => :feature do
  background do
    admin = create(:administrator)
    visit "/admin/rotators"
    fill_in "Email", with: "root@gmail.com"
    fill_in "Password", with: "11111111"
    click_button "Sign in"
  end

  scenario "add a new rotator" do
    visit "/admin/rotators"
    rotator = create(:rotator)
    click_link "新增輪播圖"
    
    expect{
      fill_in "title", with: rotator.title
      fill_in "link", with: rotator.link
      click_button "確認"
    }.to change(Rotator, :count).by(1)
    expect(current_path).to eq "/admin/rotators"
    expect(page).to have_content "成功新增輪播"
  end

  scenario "edit a rotator" do
    rotator = create(:rotator, title: "title", link: "link")
    visit "/admin/rotators"
    within "#rotator_#{rotator.id}" do
      click_link "編輯"
    end
    fill_in "title", with: "new title"
    fill_in "link", with: "new link"
    click_button "確認"

    expect(page).to have_content "成功更新輪播"
    expect(page).to have_content "new title"
    expect(page).to have_content "new link"
  end

  scenario "delete a rotator" do
    rotator = create(:rotator)
    visit "/admin/rotators"
    expect{
      within "#rotator_#{rotator.id}" do
        click_link "刪除"
      end
      #page.driver.browser.switch_to.alert.accept
    }.to change(Rotator, :count).by(-1)
    expect(page).to have_content "成功刪除輪播"
  end
end
