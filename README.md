# presto-client-rpm

## Requires

- RHEL/Centos 7 or later
- rpmdevtool

## How to build rpm package

```
% bash ./buildrpm.sh
```

### Override BUILD_NUMBER

```
% BUILD_NUMBER=3 bash ./buildrpm.sh
```

## debug

```
% bash -x ./buildrpm.sh
```
