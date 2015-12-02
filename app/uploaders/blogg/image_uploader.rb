class Blogg::ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper

  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg png)
  end

  def default_url
    ActionController::Base.helpers.asset_path("blogg/fallback/" + [version_name, "default-image-header.jpg"].compact.join('_'))
  end

  process :resize_to_fit => [1000, 600]

end
