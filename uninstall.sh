pip3 uninstall ecli
git rm -r dist
git rm -r build
git rm -r ecli.egg-info
rm -r dist
rm -r build
rm -r ecli.egg-info
git add .
git commit -m "remove old build"

