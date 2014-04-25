EPUB
====


## Documentation

* [Specifications](http://idpf.org/epub/301)
* [Specifications des publications](http://www.idpf.org/epub/301/spec/epub-publications.html)
* [Specifications du conteneur EPUB](http://www.idpf.org/epub/301/spec/epub-ocf.html) &mdash; [Exemple de structure](http://www.idpf.org/epub/301/spec/epub-ocf.html#example)
* [EPUB Validator](http://validator.idpf.org)
* [iBooks Asset Guide 5.1 Revision 2](https://itunesconnect.apple.com/docs/iBooksAssetGuide5.1Revision2.pdf)




## Conteneur EPUB

### Fichier OPF (Open Packaging Format)

Lié via container.xml

* &lt;metadata&gt; : centralise les métadonnées de la publication (Auteur, éditeur, ISBN...)
* &lt;manifest&gt; : liste exhaustive des fichiers composant la publication (html, css, images, table des matières...)
* &lt;spine&gt; : "Colonne vertébrale", liste d'ID définissant l'ordre des contenus


#### Fixed layout

Notation EPUB3, ignorée par iBooks.

```html
  <meta property="rendition:layout">pre-paginated</meta>
  <meta property="rendition:spread">auto</meta>
  <meta property="rendition:orientation">auto</meta>
  <meta property="rendition:viewport">width=500, height=500</meta>
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<display_options>
  <platform name="*">
    <option name="fixed-layout">true</option>
    <option name="open-to-spread">true</option>
    <option name="interactive">true</option>
    <option name="specified-fonts">true</option>
    <option name="orientation-lock">none</option>
  </platform>
</display_options>
```


## Fonctionnalités EPUB

### Notes de pied page

```html
<a href="chapter.xhtml#note-01" epub:type="noteref">EPUB</a>
<aside id="note-01" epub:type="footnote">Electronic Publication</aside>
```

> *Note&nbsp;:* L'utilisation des attribut "epub:type" nécessite l'inclusion du _namespace_ epub sur la balise _html_ :

```html
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">
```

### Couverture

```html
<!--Cover-->
<item id="img-01" href="Images/cover.jpg" media-type="image/jpeg" properties="cover-image" />
```



### Images

Dans les epubs flow, il est recommandé de définir la taille des images via son conteneur&nbsp;:

```html
<div class="image-container">
  <img src="images/bears.jpg" alt="three bears peer at goldie locks"/>
</div>
```

```css
img { width: 100%; }
.image-container { width: 90%; }
```




## JavaScript

* Utiliser JS pour déclencher les intéractivités mais utiliser CSS pour les animations.
* Utiliser les transformations 3D en CSS à la place du positionnement top/right/bottom/left.
Les animations seront plus douces parce qu'elle disposent d'une accélération matérielle.
* Utiliser `preventDefault` pour éviter de déclencher l'affichage des menus.





