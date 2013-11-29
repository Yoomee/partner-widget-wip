class CreatePartnerWidgetPolls < ActiveRecord::Migration
  def change
    create_table :partner_widget_polls do |t|
      t.string :name
      t.text :question
      t.string :answer_1
      t.text :message_1
      t.string :answer_2
      t.text :message_2
      t.string :answer_3
      t.text :message_3
      t.string :answer_4
      t.text :message_4
      t.string :color_1
      t.string :color_2
      t.string :color_3
      t.string :font

      t.timestamps
    end
  end
end
