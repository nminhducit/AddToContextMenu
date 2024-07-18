# ManageContextMenu

A batch file to add applications with icons to Windows context menu and restore old Windows 10 context menu.

## Description

This batch file allows you to:
1. Add any application to the right-click context menu on Windows with a custom icon.
2. Restore the old Windows 10 context menu style in Windows 11.

## Usage

1. Download the batch file: [src/main.bat](src/main.bat)
2. Run the batch file by double-clicking it.
3. Choose an option from the menu:
   - Enter `1` to add an application to the context menu.
   - Enter `2` to restore the old Windows 10 context menu.
4. Follow the prompts for the selected option.

### Example

If you want to add Notepad with an icon to the context menu:

- Enter `1` from the menu.
- Enter `Notepad` as the name.
- Enter `C:\Windows\System32\notepad.exe` as the path.
- Enter `C:\Path\To\Icon.ico` as the icon path.

To restore the old Windows 10 context menu:

- Enter `2` from the menu.
- Restart your computer for the changes to take effect.

## Note

- Ensure the application and icon paths are correct and the files are accessible.
- The script adds entries to the Windows Registry. Be cautious when modifying the registry.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
