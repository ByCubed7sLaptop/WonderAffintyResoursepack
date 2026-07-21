
rm -f "Elderwilds.zip"

# Unzip all files into the folder
mkdir build
for f in *.zip; do
    unzip -o "$f" -d build
done

# Build Elderwilds resourcepack
cd Elderwilds
zip -r "../Elderwilds.zip" .
cd ..
unzip -o "Elderwilds.zip" -d build

# Zip into final build
rm -f build.zip
cd build
zip -r ../build.zip .
cd ..
rm -rf build

./sha1.sh
