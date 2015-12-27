class Sistema < ActiveRecord::Base
	  mount_uploader :imagem, ImagemUploader
end
