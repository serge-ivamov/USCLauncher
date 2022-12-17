USCLauncher
===========

<img src="Doc/USCLauncherAppIcon.png" width="250px">

- [unnamed-sdvx-clone](https://github.com/Drewol/unnamed-sdvx-clone/) build for MacOS
- MacOS: 10.13+
- Arch: x86_64/aarm64
- NO SONGS inside
- [Download/Open/Run](https://github.com/serge-ivamov/USCLauncher/releases/download/v1.0.0/USCLauncher-Installer-1.0.0.dmg)

# Problems
- Modern macos do not allow unsigned applications to run, so you need to remove the quarantine flags to run them:
  ```bash
  $ xattr -c /Applications/USCLauncher.app
  ```

# Screenshot

![](Doc/USCL-screenshot.png)
