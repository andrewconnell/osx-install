# MacOS Buildout

Hi!
This repo hosts some scripts I use to quickly setup my friends and family's Mac computers. 

To start open Terminal in macOS and paste the following line

```console
bash <(curl -Ls https://raw.githubusercontent.com/lovozeto/macOS-postinstall/master/installer.sh)
```


Special thanks to @andrewconnell and his amazong original repo:

  ```console
https://github.com/andrewconnell
  ```

## Important Notes on `installer.sh`

*   **Remote Repository Dependence:** `installer.sh` fetches several helper scripts (like `homebrew-setup.sh`, user-specific app lists, and `office-install.sh`) directly from the `https://github.com/lovozeto/macOS-postinstall` repository. This means an active internet connection is required, and the script's successful execution depends on the availability and structure of that remote repository.
*   **User-Specific Scripts:** When prompted for a name (`USERNAME`), you must provide a name for which a corresponding `personal-files/USERNAME/homebrew-install-apps.sh` script exists in the `lovozeto/macOS-postinstall` remote repository. If this script doesn't exist at that location, the "Install Apps" step will fail.
*   **Troubleshooting Download Failures:** If the script fails with messages related to "Failed to download" or "script not found," you should:
    *   Check your internet connection.
    *   Verify the URL printed by the script in a web browser to see if it's accessible.
    *   Ensure the `USERNAME` provided matches a configuration in the remote repository.