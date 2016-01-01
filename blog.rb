class Blog
	# Let’s create a variable that will count our blog posts, starting at 0,
	# and an array that will hold all of the blog posts
	@@number_of_posts = 0
	@@all_blog_posts = []

	# Let's create a method that will increment with each new blog post created 
	# and appended to our array of posts.
	def increase_post_counter
		@@number_of_posts += 1
	end

	# Will display each blog post
	def self.publish_posts
		@@all_blog_posts.each do |blog_post|
			puts "Title:\n #{blog_post.get_title}"
			puts "Author:\n #{blog_post.get_author}"
			puts "Publish Date:\n #{blog_post.get_publish_date}"
			puts "Your blog post:\n #{blog_post.get_content}"
		end
	end


end


# Create a class that will be the blueprint for each ‘BlogPost’ object. 
# This class should set a title, content, a publish date, and maybe even 
# an author for each NEW post. You may want to do this by modifying the 
# initialize method OR you may want you craft your own method, with all 
# the special behaviour in it.
class BlogPost < Blog

	def self.create_post
		blog_post = new

		puts "Enter your blogpost title:"
		blog_post.set_title=gets.chomp

		puts "Enter your blog content:"
		blog_post.set_content=gets.chomp

		blog_post.set_publish_date = Time.now

		puts "Enter your name (or author's name):"
		blog_post.set_author=gets.chomp

		puts "Do you want to create another blog post? [Y/N]"

		#call the save method
		blog_post.save

		#logic to keep adding posts as long as user wants to
		create_post if gets.chomp.downcase == 'y'
	end

	def set_title=(title)
		@title = title		
	end

	def get_title
		return @title
	end

	def set_content=(content)
		@content = content
	end

	def get_content
		return @content
	end

	def set_publish_date=(pub_date)
		@pub_date = pub_date
	end

	def get_publish_date
		return @pub_date
	end

	def set_author=(author)
		@author = author
	end

	def get_author
		return @author
	end

	def save
		#push new post into the @@all_blog_posts array
		@@all_blog_posts.push(self)

		# add one to the counter
		self.increase_post_counter
	end

end

# Will begin prompts and save info
BlogPost.create_post

# Publish blogs to view
BlogPost.publish_posts