# Android App for the Memory game

This is the Android app for the [memory game](http://memory.quelltext.eu). ([Source](https://github.com/niccokunzmann/memory.quelltext.eu#readme))

[<img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png"
     alt="Get it on F-Droid"
     height="80">](https://f-droid.org/packages/eu.quelltext.memory/)

or **[Download the APK](https://niccokunzmann.github.io/download_latest/app-debug.apk)**

## Development

You can use Android Studio to develop the app.

- [Issues](https://github.com/niccokunzmann/memory.quelltext.eu/issues) are those of the memory game.

## Cloning

```
git clone https://github.com/niccokuznamnn/app.memory.quelltext.eu
```

## Updating

Do this to update to the latest version:
```
git pull --recurse-submodules
cd app/src/main/assets/memory.quelltext.eu/
git checkout master
git pull origin master
```

## New Version

To release a new version:

1. Edit `metadata/en/changelogs/<NO>.txt` to describe the changes.
2. Edit `metadata/en/full_description.txt` to include the new features.
3. Edit `app/build.gradle`, the `versionCode` and `versionName` variables.
4. Create a commit and push it on the  master branch.
    ```
    git checkout master
    git add .
    git status # check that all is right
    git diff   # check that all is right
    git commit -m"v1.3"
    ```
5. Create a tag named `v<versionName>` like `v1.3` if `versionName` is `"1.3"`:
    ```
    git tag v1.3 
    git push v1.3
    ```
    F-Droid should now pick up the new version and release the app.
