# Use blogdown to create a blank Hugo website
install.packages('blogdown')
library(blogdown)
new_site(theme = NA,
         format = "toml",
         sample = FALSE,
         empty_dirs = TRUE)

# We can also delete the /netlify.toml file, as it is not necessary for publishing our site to GitHub.
file.remove("netlify.toml")

# Add hugo-apero submodule
# Determine working directory in the terminal: "cd ....."
# add this code: "git submodule add [project URL] themes/hugo-apero" (the project URL is the link for the repository in GitHub)

# Once, we’ve added the Hugo-Apéro submodule, we need to copy the following files and folders to the appropriate locations within the website repository:

# /themes/hugo-apero/assets/ 
#   ⟶
# ⟶ /assets/;
# /themes/hugo-apero/exampleSite/config.toml 
# ⟶
# ⟶ root directory;
# /themes/hugo-apero/exampleSite/content/ 
#   ⟶
# ⟶ root directory; and,
# /themes/hugo-apero/exampleSite/layouts/ 
#   ⟶
# ⟶ root directory.

# Build the website locally using Hugo
blogdown::build_site()

