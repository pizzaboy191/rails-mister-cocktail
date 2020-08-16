require 'rubygems'
require 'algoliasearch'

Algolia.init(
  application_id: '9U23KAYCU7',
  api_key: 'e8f07a52b0678e9abaebcdcc89d2742d'
  )

index = Algolia::Index.new('dev_drinks')

drinks = [{name: 'Blue Lagoon', description: 'delicious evening drink'}]
index.add_objects(drinks)
