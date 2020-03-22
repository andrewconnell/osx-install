FiddlerFilterSet.ffx
====================
Predefined filterset configuration for Fidder.

To apply:
- Click the **Filters** tab
- Click the **Actions** button
  - Select **Load Filterset** & select this file.


SPOAuthFiddlerExt.dll
===
Fiddler inspector extension for looking at a OAuth2 tokens passed in the request header.

To apply for all users:
- Copy the `SPAuthFiddlerExt.dll` & `Newtonsoft.Json.dll` files to the `C:\Program Files (x86)\Fiddler2\Inspectors` folder.
> This requires admin rights to the above folders.

OR to use for the current user...

- Copy the `SPAuthFiddlerExt.dll` & `Newtonsoft.Json.dll` files to the `{MY DOCUMENTS}\Fiddler2\Inspectors` folders.

Relaunch Fiddler. There's a new tab in the **Request** section of the **Inspector** tab called **SPOAuth**. Once you select a session, if there is an HTTP REQUEST header **Authorization** present with a **Bearer** token, it will be decoded & displayed.