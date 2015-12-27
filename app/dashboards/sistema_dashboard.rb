require "administrate/base_dashboard"

class SistemaDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    nome: Field::String,
    sigla: Field::String,
    descricao: Field::Text,
    inicio: Field::DateTime,
    termino: Field::DateTime,
    em_andamento: Field::Boolean,
    cliente: Field::String,
    imagem: FileField,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :nome,
    :sigla,
    :descricao,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :nome,
    :sigla,
    :descricao,
    :inicio,
    :termino,
    :em_andamento,
    :imagem,
    :cliente,
  ]

  # Overwrite this method to customize how sistemas are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(sistema)
  #   "Sistema ##{sistema.id}"
  # end
end
