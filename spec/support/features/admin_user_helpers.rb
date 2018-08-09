module Features
  module AdminUserHelpers
    def sign_in_to_admin_panel(admin_user)
      visit '/admin'
      fill_in 'admin_user_email', with: admin_user[:email]
      fill_in 'admin_user_password', with: admin_user[:password]
      click_button 'Log in'
    end

    def fill_event_form(event)
      fill_in 'event_title', with: event.title
      fill_in 'event_place_title', with: event.place_title
      fill_in 'event_description', with: event.description
      fill_in 'event_start_at', with: event.start_at
      fill_in 'event_end_at', with: event.end_at
      click_button 'Create Event'
    end
  end
end
