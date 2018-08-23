module Features
  module AdminUserHelpers
    def sign_in_to_admin_panel(email:, password:)
      visit '/admin'
      fill_in 'admin_user_email', with: email
      fill_in 'admin_user_password', with: password
      click_button 'Log in'
    end

    def fill_event_form(event_params)
      fill_in 'event_title', with: event_params[:title]
      fill_in 'event_place_title', with: event_params[:place_title]
      fill_in 'event_description', with: event_params[:description]
      fill_in 'event_start_at', with: event_params[:start_at]
      fill_in 'event_end_at', with: event_params[:end_at]
      click_button 'Create Event'
    end

    def fill_event_item_form(item_params)
      click_link 'Add Event Item'
      all('input')[6].set(item_params[:title])
      all('input')[7].set(item_params[:speaker_name])
      all('input')[8].set(item_params[:start_at])
      all('input')[9].set(item_params[:end_at])
      click_button 'Update Event'
    end

    def fill_event_media_partner_form(media_partner_params)
      click_link 'Add Event Media Partner'
      all('input')[6].set(media_partner_params[:title])
      all('input')[7].set(media_partner_params[:link])
      click_button 'Update Event'
    end

    def visit_event_item_edit_page(title)
      visit '/admin/events'
      within(:xpath, ".//tr[td[contains(text(), #{title})]]") do
        click_link 'Edit'
      end
    end
  end
end
