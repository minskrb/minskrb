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

    def fill_event_item_form(item_params, event_id)
      select event_id, from: 'Event'
      fill_in 'event_item_title', with: item_params[:title]
      fill_in 'event_item_description', with: item_params[:description]
      fill_in 'event_item_speaker_name', with: item_params[:speaker_name]
      fill_in 'event_item_start_at', with: item_params[:start_at]
      fill_in 'event_item_end_at', with: item_params[:end_at]
      click_button 'Create Event item'
    end

    def fill_event_media_partner_form(media_partner_params, event_id)
      select event_id, from: 'Event'
      fill_in 'event_media_partner_title', with: media_partner_params[:title]
      fill_in 'event_media_partner_link', with: media_partner_params[:link]
      click_button 'Create Event media partner'
    end
  end
end
