# Sublime Text 3 Settings


### Search in Projects

Usually, this query is used to exclude dist/vendor/binary files from searching.

In the `Where:` section:
```
-*/node_modules/*,-*/vendor/*,-*/tests/_reports/*,-*/storage/*,-*.sqlite,-*/coverage/*,-*/public/*,-yarn.lock,-package-lock.json,-composer.lock
```


### Regex for search:

#### "Anything but not XXX" pattern
```
((?!something).)*$
```

> Example 1:
> 
> Search for static functions from some Manager
> 
> ```
> Manager::((?!class).)*$
> ```

#### "Anything between" pattern

```
app\((?s)(.*)(\n$)::class\)
```

