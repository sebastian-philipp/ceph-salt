{% if 'ceph-salt' in grains and grains['ceph-salt']['member'] %}

include:
    - ..reset
    - ..common.sshkey
    - .update
    - .update-end

{% else %}

nothing to do in this node:
  test.nop

{% endif %}
