# Clear Folders For Multiple Users
## Cache Cleaner Script

This PowerShell script is designed to clear various cache folders on Windows, making it particularly useful for educational institutions such as universities and schools that manage Windows environments with domain user profiles.

## Usage

1. **Download Script:** Download the `ClearFoldersForMultipleUsers.ps1` script from this repository.

2. **Run Script:**

   - Open PowerShell as Administrator.
   - Navigate to the directory where the script is located.
   - Run the following command to execute the script:

     ```powershell
     .\ClearFoldersForMultipleUsers.ps1 -ProfileLocation <ProfilePath>
     ```

     Replace `<ProfilePath>` with the path to the user profile. If not provided, the script uses the current user's profile.

3. **Review Output:**

   - The script will display progress as it searches for cache folders and clears them.
   - Disk space difference before and after the cleanup will be shown.

4. **Revert Execution Policy:**

   - The script temporarily adjusts the execution policy. After execution, it reverts the execution policy back to its original state.

## Notes

- Ensure you have the necessary permissions to clear cache folders.
- Test the script in a controlled environment before deploying it widely.
- In case of error " + FullyQualifiedErrorId : UnauthorizedAccess" 
- - Open an Administrator PowerShell and type:
- - - Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force


## License

This script is released under the [MIT License](LICENSE).
