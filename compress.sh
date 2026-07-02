
# Build Elderwilds resourcepack
rm -f "zzz\ Elderwilds.zip"
cd Elderwilds
zip -r "../zzz\ Elderwilds.zip" .
cd ..

# Unzip all files into the folder
mkdir build
for f in *.zip; do
    unzip -o "$f" -d build
done

# Zip into final build
rm -f build.zip
cd build
zip -r ../build.zip .
cd ..
rm -rf build
