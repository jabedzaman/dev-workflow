#!bin/bash/

# check if node is installed  if not install it  (for arch linux)

if ! command -v node &> /dev/null
then
    echo "node could not be found"
    echo "installing node"
    sudo pacman -S nodejs
fi

# check if npm is installed  if not install it  (for arch linux)

if ! command -v npm &> /dev/null
then
    echo "npm could not be found"
    echo "installing npm"
    sudo pacman -S npm
fi

# check if yarn is installed  if not install it  (for arch linux)

if ! command -v yarn &> /dev/null
then
    echo "yarn could not be found"
    echo "installing yarn"
    sudo pacman -S yarn
fi

# check if git is installed  if not install it  (for arch linux)

if ! command -v git &> /dev/null
then
    echo "git could not be found"
    echo "installing git"
    sudo pacman -S git
fi

#  ask if user wants to setup android development environment

echo "Do you want to setup android development environment? (y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "setting up android development environment"
    # check if android studio is installed  if not install it  (for arch linux)
    if ! command -v android-studio &> /dev/null
    then
        echo "android studio could not be found"
        echo "installing android studio"
        sudo pacman -S android-studio
    fi
    # check if jdk is installed  if not install it  (for arch linux)
    if ! command -v jdk &> /dev/null
    then
        echo "jdk could not be found"
        echo "installing jdk"
        sudo pacman -S jdk
    fi
    # check if jre is installed  if not install it  (for arch linux)
    if ! command -v jre &> /dev/null
    then
        echo "jre could not be found"
        echo "installing jre"
        sudo pacman -S jre
    fi
    # check if gradle is installed  if not install it  (for arch linux)
    if ! command -v gradle &> /dev/null
    then
        echo "gradle could not be found"
        echo "installing gradle"
        sudo pacman -S gradle
    fi
    # check if android sdk is installed  if not install it  (for arch linux)
    if ! command -v android-sdk &> /dev/null
    then
        echo "android sdk could not be found"
        echo "installing android sdk"
        sudo pacman -S android-sdk
    fi
    # check if android ndk is installed  if not install it  (for arch linux)
    if ! command -v android-ndk &> /dev/null
    then
        echo "android ndk could not be found"
        echo "installing android ndk"
        sudo pacman -S android-ndk
    fi
    # check if android platform tools is installed  if not install it  (for arch linux)
    if ! command -v android-platform-tools &> /dev/null
    then
        echo "android platform tools could not be found"
        echo "installing android platform tools"
        sudo pacman -S android-platform-tools
    fi
    # check if android emulator
    if ! command -v android-emulator &> /dev/null
    then
        echo "android emulator could not be found"
        echo "installing android emulator"
        sudo pacman -S android-emulator
    fi
    exit
fi


#  ask if user wants to setup flutter development environment

echo "Do you want to setup flutter development environment? (y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "setting up flutter development environment"
    # check if flutter is installed  if not install it  (for arch linux)
    if ! command -v flutter &> /dev/null
    then
        echo "flutter could not be found"
        echo "installing flutter"
        sudo pacman -S flutter
    fi
    # check if dart is installed  if not install it  (for arch linux)
    if ! command -v dart &> /dev/null
    then
        echo "dart could not be found"
        echo "installing dart"
        sudo pacman -S dart
    fi
    exit
fi

#  ask if user wants to setup react native development environment

echo "Do you want to setup react native development environment? (y/n)"
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "setting up react native development environment"
    # check if react native is installed  if not install it  (for arch linux)
    if ! command -v react-native &> /dev/null
    then
        echo "react native could not be found"
        echo "installing react native"
        sudo pacman -S react-native
    fi
    exit
fi

#  install vscode (for arch linux)

if ! command -v code &> /dev/null
then
    echo "vscode could not be found"
    echo "installing vscode"
    sudo pacman -S code
fi

if ! command -v zsh &> /dev/null
then
    echo "zsh could not be found"
    echo "installing zsh"
    sudo pacman -S zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


exit 0

