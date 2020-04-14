# Haxe externs for Egret

Description
------------------------------

The Haxe externs of Egret game engine.
See [official website](https://www.egret.com/ "Egret game engine") of Egret.

How to use
------------------------------

```
```

Include the Egret
------------------------------

Include the Egret libraries in your project:
```
<script src="/egret/egret.min.js"></script>
<script src="/egret/res.min.js"></script>
```

Adding library
------------------------------

1. Install haxelib so that you can use the Haxe libraries.
2. Run the command in the terminal to install the Egret externs library globally on your local machine:
```
haxelib git Egret https://github.com/VolkovRA/HaxeEgret master
```
Command syntax:
```
haxelib git [project-name] [git-clone-path] [branch]
haxelib git minject https://github.com/massiveinteractive/minject.git         # Use HTTP git path.
haxelib git minject git@github.com:massiveinteractive/minject.git             # Use SSH git path.
haxelib git minject git@github.com:massiveinteractive/minject.git v2          # Checkout branch or tag `v2`.
```
3. Add the Egret library to your project to use it in the code. If you are using HaxeDevelop, then simply add the entry to the .hxproj file:
```
<haxelib>
	<library name="Egret" />
</haxelib>
```

See more information:
 * [Documentation Haxelib](https://lib.haxe.org/documentation/using-haxelib/ "Using Haxelib")
 * [Documentation HaxeDevelop](https://haxedevelop.org/configure-haxe.html "Configure Haxe")
 * [Egret home](https://www.egret.com/ "official web site")
 * [Egret API DOC](http://developer.egret.com/en/apidoc/ "Documentation of API")