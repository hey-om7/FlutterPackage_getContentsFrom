# Get File Contents From

## Easiest Dart Package for Getting all the files and folders in the given path

![https://www.buymeacoffee.com/heyom](forReadme/buymecoffee.png)
https://www.buymeacoffee.com/heyom

---

## > Adding Permissions

```
      <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
      <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
      <uses-permission android:name="android.permission.WAKE_LOCK" />
```

## > Add this in Android Manifest

```
   <application
        ...
        android:requestLegacyExternalStorage="true"
        ...
        </application>
```

---

# Extreme Simple use of the package

## Initialize the class

```
var getFiles=FileManager();
```

## Now use all the functions provided by the package like:

```
getFiles.getContentsFromPath('/storage/emulated/0/');
```

## Above code will return a list in which the full paths of the files available will be available

```
getFiles.getContentsFilenamesFromPath('/storage/emulated/0/');
```

## Above line of code will return a list in which only the names of the files available will be available

```
getFiles.getCurrentDirectory();
```

## To get the current working directory

```
getFiles.pathDirectory="/storage/emulated/0/Android/";
```

## Above code depicts the way to change the current working directory/path

---

## Look at the example linked to know more

https://pub.dev/packages/get_file_contents_from/example

---

## Getting Started with Flutter

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
