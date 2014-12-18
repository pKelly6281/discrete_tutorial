class AddAnswerToEquation < ActiveRecord::Migration
  def change
    add_column :equations, :answer, :string
  end
end
