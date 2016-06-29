DESTDIR=%{buildroot}
ansibledir = /usr/share/ansible

all:

install:
	install -m755 -d $(DESTDIR)$(ansibledir)
	cp -r roles $(DESTDIR)$(ansibledir)
	cp -r examples $(DESTDIR)$(ansibledir)
	install -m755 -d $(DESTDIR)$(ansibledir)/plugins/action
	mv roles/ceph-common/plugins/actions/*.py $(DESTDIR)$(ansibledir)/plugins/action
