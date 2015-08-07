{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "C:\Program Files (x86)" %}
{% else %}
    {% set PROGRAM_FILES = "C:\Program Files" %}
{% endif %}
winmerge:
   2.14.0:
      installer: 'http://downloads.sourceforge.net/project/winmerge/stable/2.14.0/WinMerge-2.14.0-Setup.exe'
      full_name: 'WinMerge 2.14.0'
      reboot: False
      install_flags: '/SP- /verysilent /norestart'
      uninstaller: '{{ PROGRAM_FILES }}\WinMerge\unins000.exe'
      uninstall_flags: '/SP- /verysilent /norestart'
