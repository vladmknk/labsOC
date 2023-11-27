Name:           count_files
Version:        1.0
Release:        1%{?dist}
Summary:        Count files in /etc directory
Group:          Applications/System
License:        GPL
URL:            https://github.com/vladmknk/labsOC
BuildArch:      noarch

%description
This package counts the number of files in the /etc directory.

%prep
if [ ! -d labsOC ]; then
  git clone https://github.com/vladmknk/labsOC.git labsOC
fi
cd labsOC/

%install
mkdir -p $RPM_BUILD_ROOT/%{_bindir}
install -m 0755 $RPM_BUILD_DIR/labsOC/count_files.sh $RPM_BUILD_ROOT/%{_bindir}/%{name}.sh

%files
/usr/bin/count_files.sh