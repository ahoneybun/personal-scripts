# personal-scripts
Just some handly scripts that I wrote

## Running scripts remotely:

### Support Help Suite

```bash
bash <(curl -sL https://raw.githubusercontent.com/ahoneybun/personal-scripts/main/support-script.sh)
```

or

```bash
bash <(curl -sL https://s76.co/support-script)
```

Options:

```
  --help                Show this help message
  --fix-apt             Fixes dpkg issues such as unconfigured
  --fix-flatpak         Fixes common flatpak issues
  --fix-system76-power  Fixes system76-power configure issue
  --clear-efi           Clears extra EFI variables from firmware
  --clear-firmware      Clears the downloaded firmware files and restarts the process
  --reinstall-nvidia    Reinstalls the NVIDIA driver
```

### Application Search

```bash
bash <(curl -sL https://raw.githubusercontent.com/ahoneybun/personal-scripts/main/application-search.sh)
```

### S76 Test Suite

```bash
bash <(curl -sL https://raw.githubusercontent.com/ahoneybun/personal-scripts/main/s76-test-suite/pang12-test.sh)
```
