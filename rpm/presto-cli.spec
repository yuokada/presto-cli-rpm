%define    prefix  /
%define    debug_package %{nil}

Name:      presto-cli
Version:   %{version}
Release:   %{release}
Group:     Applications/Databases
License:   Apache License 2.0
URL:       https://github.com/prestodb/presto
Summary:   Presto Client
BuildArch: x86_64
Source0:   presto-cli
# (only create temporary directory name, for RHEL5 compat environment)
# see : http://fedoraproject.org/wiki/Packaging:Guidelines#BuildRoot_tag
Prefix:    /
BuildRoot: %(mktemp -ud %{_tmppath}/%{name}-%{version}-%{release}-XXXXXX)

%description

%prep

%build

%install
%{__install} -Dp -m0755 presto-cli %{buildroot}/usr/local/bin/%{name}

%clean

%files
%defattr(0755,root,root)
%{prefix}/usr/local/bin/presto-cli

%pre

%post

%changelog
* Sat Apr 08 2017 yuokada
- initial release
