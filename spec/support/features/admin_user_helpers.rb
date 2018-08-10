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
  end
end
