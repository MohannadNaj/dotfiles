# Sublime Text 3 Settings


#### Search in Projects

Usually, this query is used to exclude dist/vendor/binary files from searching.

In the `Where:` section:
```
-*/node_modules/*,-*/vendor/*,-*/tests/_reports/*,-*/storage/*,-*.sqlite,-*/coverage/*,-*/public/*,-yarn.lock,-package-lock.json,-composer.lock
```