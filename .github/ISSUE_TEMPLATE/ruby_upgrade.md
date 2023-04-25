---
name: Ruby upgrade
about: Upgrading the version of ruby
title: 'Upgrade to ruby [INSERT VERSION NUMBER HERE]'
labels: maintenance
assignees: ''

---

- [ ] Add the new ruby version to CircleCI
- [ ] Fix any failing tests or dependency issues caused by ruby upgrade
- [ ] Provision staging box to use the new ruby version
- [ ] Deploy code that works with the new ruby version to staging
- [ ] Manually test on staging box with the new ruby version
- [ ] Provision production box to use new ruby version
- [ ] Deploy to prod, confirm working on new ruby version
- [ ] Update this issue template with anything we need to keep in mind for the next upgrade
