VERSION=$1

echo $VERSION

sed -i "" "s/[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*/$VERSION/g" lib/natural-sort-js/version.rb
rake tag_default VERSION=${VERSION}
git add .
git commit -am "v${VERSION} Release"
git tag -a ${VERSION} -m "v${VERSION} Release"
git push ets master
git push --tags ets master
gem build natural-sort-js.gemspec
gem push natural-sort-js-${VERSION}.gem
rm natural-sort-js-${VERSION}.gem
