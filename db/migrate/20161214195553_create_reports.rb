class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :nombre
      t.string :pdte_mpal
      t.string :dip_local
      t.string :dip_federal
      t.datetime :renovacion_cdm
      t.text :situacion_municipio
      t.text :situacion_cdm
      t.text :temas_rednion
      t.string :image
      t.text :observaciones

      t.timestamps
    end
  end
end
