class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string     :project_slug
      t.string     :logo_url
      t.string     :project_title
      t.text       :description
      t.references :owner
      t.string     :figma_link
      t.string     :git_link
      t.string     :trello_link
      t.text       :story


      t.timestamps
    end
  end
end
