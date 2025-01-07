# personal-scripts
Just some handly scripts that I wrote

## Running scripts remotely:

### Support Help Suite

```bash
bash <(curl -L https://raw.githubusercontent.com/ahoneybun/personal-scripts/main/support-script.sh)
```

Options:

```
Usage: ./support-script.sh --file FILE --verbose --help
  --file FILE         Specify a file
  --verbose           Enable verbose output
  --help              Show this help message
  --fix-apt           Fixes dpkg issues such as unconfigured
  --clear-efi         Clears extra EFI variables from firmware
  --clear-firmware    Clears the downloaded firmware files and restarts the process
  --reinstall-nvidia  Reinstalls the NVIDIA driver
```

### S76 Test Suite

```bash
bash <(curl -L https://raw.githubusercontent.com/ahoneybun/personal-scripts/main/s76-test-suite/pang12-test.sh)
```
