# AddToContextMenu

A batch file to add applications to Windows context menu.

## Description

This batch file allows you to add any application to the right-click context menu on Windows. It prompts the user for the application name and path, verifies the file exists, and creates the necessary registry entries.

## Usage

1. Download the batch file: [src/main.bat](src/main.bat)
2. Run the batch file by double-clicking it.
3. Enter the name for the context menu entry when prompted.
4. Enter the full path to the application when prompted.

### Example

If you want to add Notepad to the context menu:

- Enter `Notepad` as the name.
- Enter `C:\Windows\System32\notepad.exe` as the path.

## Note

- Ensure the application path is correct and the application is accessible.
- The script adds entries to the Windows Registry. Be cautious when modifying the registry.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
