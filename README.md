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
cd ..
git add .
git commit -m"update memory game"
```

### Update Translations

Install the [Transifex Command Line Client](https://github.com/transifex/transifex-client/) for Raspberry Pi and Android Phones.
([Android](https://github.com/niccokunzmann/transifex-client-armv7l-binary)).
You may be prompted to get an API token which you can get if you have an account..

1. Add the changelogs.
    ```
    bash ci/add_changelogs_to_transifex.sh
    git add .tx
    git commit -am"translate changelogs"
    ```
2. Push the translations.
    ```
    tx push --source
    ```
3. Update all translations.
    ```
    tx pull --all
    ```
4. Commit the changes.
    ```
    git add .
    git commit -am"update translations"
    git push
    ```

## New Release

To release a new version:

1. Update the submodule as mentioned above.
2. Edit `metadata/en/full_description.txt` to include the new features.
3. Edit `app/build.gradle`, the `versionCode` and `versionName` variables.
4. Edit `metadata/en/changelogs/<NO>.txt` to describe the changes.
5. Update the translations as mentioned above.
6. Create a commit and push it on the master branch.
    ```
    git checkout master
    git add .
    git status # check that all is right
    git diff   # check that all is right
    git commit -m"v1.3"
    ```
7. Create a tag named `v<versionName>` like `v1.3` if `versionName` is `"1.3"`:
    ```
    git tag v1.3 
    git push origin v1.3
    ```
    F-Droid should now pick up the new version and release the app.

