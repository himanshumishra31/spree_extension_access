class CreateSpreeRolesPermissionSets < ActiveRecord::Migration
  def change
    create_table :spree_roles_permission_sets do |t|
      t.references :role, index: true, foreign_key: { to_table: :spree_roles }
      t.references :permission_set, index: true, foreign_key: { to_table: :spree_permission_sets }
    end
  end
end
