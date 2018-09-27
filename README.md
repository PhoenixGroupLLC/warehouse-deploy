# warehouse-deploy
Warehouse deployment files

You need to create deployment secret files under .secrets/
+ **.secrets/db/client-cert.pem** 

  This is aquired from google-cloud.
+ **.secrets/db/client-key.pem**

  This is aquired from google-cloud.
+ **.secrets/db/server-ca.pem**

  This is aquired from google-cloud.
+ **.secrets/db/db-ip**
+ **.secrets/db/db-port** 
+ **.secrets/db/db-user** 
+ **.secrets/db/db-pwd** 
+ **.secrets/db/db-schema** 
+ **.secrets/storage/storage-project-id** 
+ **.secrets/storage/storage-secrets.json** 

  This is aquired from google-cloud.


### To build
use ``npm run build``

### To start 
use ``npm start``

### To deploy 
use ``npm run deploy``