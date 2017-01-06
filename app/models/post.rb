class Post < ApplicationRecord
	has_many :comentarios, dependent: :destroy
	accepts_nested_attributes_for :comentarios
	acts_as_paranoid
	validates_presence_of :titulo, :message => "Deve ser preenchido"
	validates_presence_of :descricao, :message =>"Deve ser preenchido"
	has_attached_file :imagem, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>#"}
	validates_attachment_content_type :imagem, content_type: /\Aimage\/.*\z/
end
