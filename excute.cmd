cd /hugo/ASCDC_intern
hugo -t airspace-hugo
git add -A
git commit -m "Updating site" && git push origin master
git subtree push --prefix=public https://github.com/ian08005454/ASCDC_intern.git gh-pages