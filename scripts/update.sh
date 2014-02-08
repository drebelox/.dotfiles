
# allow execution
chmod +x setup.sh dev.sh apps.sh fonts.sh link.sh update.sh

echo "\033[0;34mRunning Base Setup\033[0m"
./setup.sh

echo "\033[0;34mInstalling Dev Tools\033[0m"
./dev.sh

echo "\033[0;34mInstalling Applications\033[0m"
./apps.sh

echo "\033[0;34mInstalling Fonts\033[0m"
./fonts.sh

echo "\033[0;34mCreating Symlinks\033[0m"
./link.sh

# return to starting dir
cd -