# micro-burixon-dark

## About

**micro-burixon-dark** is a set of **dark-themed color schemes** for the Micro text editor. The themes feature a black background and provide broad syntax highlighting support for various programming languages.

![banner](/screenshots/banner-burixon-dark.jpg)

### About themes

The provided themes are **designed with a dark aesthetic** in mind, featuring **black backgrounds** that reduce eye strain and enhance readability. Each theme is carefully crafted with **distinct color palettes** to match various coding environments and personal preferences.

### About micro

**[Micro](https://micro-editor.github.io/)** is a modern, user-friendly terminal-based text editor that provides intuitive features such as syntax highlighting, multiple cursors, and plugin support. It is lightweight yet powerful, making it an excellent choice for developers who prefer working in the terminal.

### Screenshots

A collection of screenshots showcasing the available themes has been prepared to help users select the most suitable one. Each theme is displayed with its corresponding name for easy identification. To explore the complete list of themes along with preview images, click **[here](/SCREENSHOTS.md)**.

## Installation

You have **two options** to install the theme:

### Install by `install.sh` script

Using **`install.sh`** will extract and move **all available themes** from the repository to the Micro color schemes directory.

To install, run:

```bash
git clone https://github.com/BuriXon-code/micro-burixon-dark
cd micro-burixon-dark
chmod +x install.sh
bash install.sh
```

### Manual Installation

Copy the files from the **`.../themes/` directory** to the **Micro editor's color scheme directory**:  

```bash
git clone https://github.com/BuriXon-code/micro-burixon-dark
cd micro-burixon-dark
cp themes/* ~/.config/micro/colorschemes/
```

You can also install **selected themes individually** by specifying their names when copying the files:

```bash
git clone https://github.com/BuriXon-code/micro-burixon-dark
cd micro-burixon-dark
cp themes/burixon-forest-dark.micro ~/.config/micro/colorschemes/
```

## Setting up 

The Micro text editor has its own **prompt that allows executing commands**. 

You can set the theme by pressing (by default) **`CTRL+E`**, and then:

```
set colorscheme burixon-*-dark
```

>[!NOTE]
> Replace **`*`** with the appropriate theme name or use the suggestions by pressing the **`TAB`** key.

## Support

### Contact:

In case of any problems, irregularities, suggestions and questions, please **contact me**:

+ **Email** : **support@burixon.com.pl**

+ **Contact form** : **[click here](https://burixon.com.pl/kontakt.php)**

### Support me:

I write useful and simple life tools to make life easier. If you consider this script and the others to be useful and helpful, you can let me know about it by making a tip on my website: **[DONATIONS](https://burixon.com.pl/donate/)**.

This should help me in further development, creating new projects, scripts and programs.

The Termux and Linux environment is made up of users. Your contribution to my work can help us develop them all!
