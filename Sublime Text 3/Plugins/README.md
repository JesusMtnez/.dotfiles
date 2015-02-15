#List of plugins
## Pre-installation.
Before begining, install **Package Control** for *Sublime Text 2/3*. To do so, just open the Sublime Text console (`` ctrl + ` `` or `Show > View console`) and paste the following code:

**Sublime Text 2**
```python
import urllib2,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation') 
```

**Sublime Text 3**
```python
import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by) 
```
Or follow the instructions **[here](https://packagecontrol.io/installation)**.
## Installation.
### Avaliable in Package Control.
- **DocBlockr**:
    - **Description**: DocBlockr is a package for Sublime Text 2 & 3 which makes writing documentation a breeze. DocBlockr supports JavaScript (including ES6), PHP, ActionScript, Haxe, CoffeeScript, TypeScript, Java, Groovy, Objective C, C, C++ and Rust.
    - [GitHub](https://github.com/spadgos/sublime-jsdocs).
- **MarkdownEditing**:
    - **Description**: Markdown plugin for Sublime Text. Provides a decent Markdown color scheme (light and dark) with more robust syntax highlighting and useful Markdown editing features for Sublime Text. 3 flavors are supported: Standard Markdown, GitHub Flavored Markdown (GFM), MultiMarkdown.
    - [GitHub](https://github.com/SublimeText-Markdown/MarkdownEditing)
- **Markdown Preview**:
    - **Description**: Preview and build your markdown files quickly in your web browser from Sublime Text 2/3.
    - [GitHub](https://github.com/revolunet/sublimetext-markdown-preview) 
- **SideBar Enhancements**:
    - **Description**: Provides enhancements to the operations on sidebar of files and folders for Sublime Text.
    - [GitHub](https://github.com/titoBouzout/SideBarEnhancements).
- **Sublime AutoSemiColon**:
    - **Description**: This plugin automatically moves a semi-colon to outside of the last bracket when pressed inside one of more pairs of brackets.
    - [GitHub](https://github.com/vivait/SublimeAutoSemiColon).
- **Terminal**:
    - **Description**: Shortcuts and menu entries for opening a terminal at the current file, or the current root project folder in Sublime Text.
    - [GitHub](https://github.com/wbond/sublime_terminal).
    - [Homepage](http://wbond.net/sublime_packages/terminal).

---
**Author:** *Jesús Martínez-Barquero Herrada*

**Last edit:** _15/02/2015_