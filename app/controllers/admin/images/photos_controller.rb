module Admin
  module Images
    class PhotosController < Admin::ApplicationController
      def destroy
        image = Image.find(params[:image_id])
        image.photo.purge
        redirect_back(fallback_location: admin_root_path)
      end
    end
  end
end
