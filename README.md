# phlo's Personal Repository

Repository (overlay) containing custom ebuilds for software not contained in Gentoo's official portage tree.

## Packages

* [app-admin/ekernel](https://github.com/phlo/ekernel) - custom Gentoo EFI stub kernel updater
* [app-portage/remerge](https://github.com/phlo/remerge) - a quick and dirty binary package host implementation
* [dev-cpp/stdman](https://github.com/jeaye/stdman) - C++ standard library man pages (generated from http://cppreference.com)

## Setup

Simply create a repository configuration file `/etc/portage/repos.conf/phlo.conf` containing:

```
[phlo]
location = <portdir>/phlo
sync-type = git
sync-uri = https://github.com/phlo/phlo-portage.git
auto-sync = yes
```

See https://wiki.gentoo.org/wiki//etc/portage/repos.conf for details.
