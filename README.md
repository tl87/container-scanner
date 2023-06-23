# Container-Scanner

## Building

Run the build script:

```bash
/bin/bash build.sh
```

---

## Running the script

Run the script and supply a container image with a tag.

Example:

```bash
/bin/bash run.sh
```

Output should be:

```bash
Enter container name: ubuntu:20.04
Preparing SBOM and scanning container image...
NAME         INSTALLED                 FIXED-IN  TYPE  VULNERABILITY   SEVERITY
coreutils    8.30-3ubuntu2                       deb   CVE-2016-2781   Low
gpgv         2.2.19-3ubuntu2.2                   deb   CVE-2022-3219   Low
libc-bin     2.31-0ubuntu9.9                     deb   CVE-2016-20013  Negligible
libc6        2.31-0ubuntu9.9                     deb   CVE-2016-20013  Negligible
libpcre3     2:8.39-12ubuntu0.1                  deb   CVE-2017-11164  Negligible
libsystemd0  245.4-4ubuntu3.21                   deb   CVE-2023-26604  Low
libudev1     245.4-4ubuntu3.21                   deb   CVE-2023-26604  Low
login        1:4.8.1-1ubuntu5.20.04.4            deb   CVE-2013-4235   Low
login        1:4.8.1-1ubuntu5.20.04.4            deb   CVE-2023-29383  Low
passwd       1:4.8.1-1ubuntu5.20.04.4            deb   CVE-2013-4235   Low
passwd       1:4.8.1-1ubuntu5.20.04.4            deb   CVE-2023-29383  Low
```

---
