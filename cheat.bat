@echo off
echo mod by hectran12
echo loading file mod...
if not exist "%CD%\www\data" mkdir "%CD%\www\data"
set url_armors=https://github.com/hectran12/A-Simple-Life-with-My-Unobtrusive-Sister-Cheat-Tutorial/raw/refs/heads/main/data/Armors.json
set url_items=https://github.com/hectran12/A-Simple-Life-with-My-Unobtrusive-Sister-Cheat-Tutorial/raw/refs/heads/main/data/Items.json
set url_weapons=https://github.com/hectran12/A-Simple-Life-with-My-Unobtrusive-Sister-Cheat-Tutorial/raw/refs/heads/main/data/Weapons.json
echo load Armors.json...
curl -L "%url_armors%" -o "%CD%\www\data\Armors.json"

echo load Items.json...
curl -L "%url_items%" -o "%CD%\www\data\Items.json"

echo load Weapons.json...
curl -L "%url_weapons%" -o "%CD%\www\data\Weapons.json"
if exist "%CD%\www\data\Armors.json" if exist "%CD%\www\data\Items.json" if exist "%CD%\www\data\Weapons.json" (
    echo done!
) else (
    echo error!
)

pause
