---
{% set roles = salt.grains.get('roles', []) %}
base:
  '*':
    - base
{% for role in roles %}
  'roles:{{role}}':
    - match: grain
    - {{ role }}
{% endfor %}