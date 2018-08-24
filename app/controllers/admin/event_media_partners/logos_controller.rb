module Admin
  module EventMediaPartners
    class LogosController < Admin::ApplicationController
      def destroy
        partner = EventMediaPartner.find(params[:event_media_partner_id])
        partner.logo.purge
        redirect_back(fallback_location: admin_root_path)
      end
    end
  end
end
