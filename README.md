# Build Arm
This action build firmware for arm target using make.

# Usage
```yaml
- uses: SiemaApplications/build-arm-action@v1
  with:
    dir: 'app'
    target: 'all'
    make_opts: 'V=1'
```
