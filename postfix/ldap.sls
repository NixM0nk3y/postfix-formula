{% from "postfix/map.jinja" import postfix with context %}

ldap:
  pkg.installed:
    - name: {{ postfix.ldap_pkg }}
    - watch_in:
      - service: postfix
