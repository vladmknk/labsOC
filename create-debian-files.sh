echo "countfiles (0.1-1) unstable; urgency=medium" > debian/changelog
echo "" >> debian/changelog
echo "  * Initial release." >> debian/changelog
echo "" >> debian/changelog
echo "-- Makarenko Vladyslav <mk.vlad2003@gmail.com>  Wed, 21 Nov 2023 10:17:00 EET" >> debian/changelog

echo "10" > debian/compat

echo "Source: countfiles" > debian/control
echo "Section: utils" >> debian/control
echo "Priority: medium" >> debian/control
echo "Maintainer: Makarenko Vladyslav <mk.vlad2003@gmail.com>" >> debian/control
echo "Standards-Version: 3.9.6" >> debian/control
echo "Build-Status: Unknown" >> debian/control
echo "" >> debian/control
echo "Package: countfiles" >> debian/control
echo "Architecture: all" >> debian/control
echo "Depends: \${misc:Depends}, bash" >> debian/control
echo "Description: Counts the number of files in the /etc directory" >> debian/control
echo " This script counts the number of files in the /etc directory, excluding" >> debian/control
echo " directories and links." >> debian/control

echo "count_files.sh usr/bin" > debian/install

echo "#!/usr/bin/make -f" > debian/rules
echo "" >> debian/rules
echo "%:" >> debian/rules
echo "\\tdh \$@" >> debian/rules
sed 's/\\t/\t/g' debian/rules > debian/rules.new
mv debian/rules.new debian/rules