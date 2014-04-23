EPUB
====


## Documentation

* [Specifications](http://idpf.org/epub/301)
* [Specifications des publication](http://www.idpf.org/epub/301/spec/epub-publications.html)
* [Specifications du conteneur EPUB](http://www.idpf.org/epub/301/spec/epub-ocf.html) &mdash; [Exemple de structure](http://www.idpf.org/epub/301/spec/epub-ocf.html#example)
* [EPUB Validator](http://validator.idpf.org)
* [iBooks Asset Guide 5.1 Revision 2](https://itunesconnect.apple.com/docs/iBooksAssetGuide5.1Revision2.pdf)




## Conteneur EPUB

### Fichier OPF (Open Packaging Format)

Lié via container.xml

* < metadata > : centralise les métadonnées de la publication (Auteur, éditeur, ISBN...)
* < manifest > : liste exhaustive des fichiers composant la publication (html, css, images, table des matières...)
* < spine > : "Colonne vertébrale", liste d'ID définissant l'ordre des contenus






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





