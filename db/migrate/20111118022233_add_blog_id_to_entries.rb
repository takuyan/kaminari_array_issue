class AddBlogIdToEntries < ActiveRecord::Migration

  def self.up
    add_column :entries, :blog_id, :integer
    if Blog.count == 0 
      b = Blog.new :name => "test blog"
      b.save 
      Entry.all.each do |e| 
        e.blog_id = b.id
        e.save
      end
    end
  end

  def self.down
    remove_column :entries, :blog_id
  end
end
