## Install a ssl certificate for localhost and run Puma

``` shell
openssl genrsa -des3 -out localhostCA.key 2048
```

You can use the key you generated to create a new Localhost SSL certificate (2048 is the number of days that it will be active for)

```shell
openssl req -x509 -new -nodes -key locahostCA.key -sha256 -days 2048 -out localhostCA.pem
```

I am moving those 2 to `~/.ssh`

```shell
mv localhostCA.key ~/.ssh/. && mv localhostCA.pem ~/.ssh/.
```

Now open Keychain Access and import the `.pem` file (Use cmd + shift + . to show hidden files/folders)

Next is generating a server key

1. Create a file called `server.csr.cnf`

```
[req]
default_bits = 2048
prompt = no
default_md = sha256
distinguished_name = dn

[dn]
C=US
ST=RandomState
L=RandomCity
O=RandomOrganization
OU=RandomOrganizationUnit
emailAddress=hello@example.com
CN = localhost
```

2. Another one called `v3.ext`

```
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = localhost
```


Save the `server.key`

```shell
openssl req -new -sha256 -nodes -out server.csr -newkey rsa:2048 -keyout server.key -config <( cat server.csr.cnf )
```

Save the `server.crt`

```shell
openssl x509 -req -in server.csr -CA ~/.ssh/localhostCA.pem -CAkey ~/.ssh/localhostCA.key -CAcreateserial -out server.crt -days 500 -sha256 -extfile v3.ext
```

Move the files to `~/.ssh`

Run Puma

```
puma -b 'ssl://127.0.0.1:3000?key=/Users/tagrudev/.ssh/server.key&cert=/Users/tagrudev/.ssh/server.crt'
```

Enjoy
