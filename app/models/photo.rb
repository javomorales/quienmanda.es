class Photo < ActiveRecord::Base
  mount_uploader :file, PhotoUploader

  acts_as_url :title, url_attribute: :slug
  def to_param
    slug
  end

  scope :published, -> { where(published: true) }

  # RailsAdmin configuration
  rails_admin do
    list do
      field :published, :toggle
      field :title
      field :file
    end

    edit do
      configure :published do 
        optional false 
      end
      configure :title do 
        optional false 
      end

      group :basic_info do
        label "Content"
        field :title
        field :file
        field :copyright
        field :published
      end
    end
  end
end
