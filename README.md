# V7

V7 is a GeneWeb plugin providing new template functions, modified
behaviour and updated templates for several commands.

## Installation (for users)

Download the from the archive corresponding to your GeneWeb version
from [github](https://github.com/geneweb/geneweb-plugin-v7/releases).

Extract the archive where your GeneWeb plugins are located.

If you launch `gwd` with this command:

```
gwd ... -plugins -unsafe /path/to/plugins
```

you must extract the content of the archive in `/path/to/plugins/v7`

## Enable the plugin on you base

Add `v7` to the list of active plugins in your `.gwf` file. For example:

```
plugins=cgl,export,forum,no_index,xhtml,v7
```

You can also force a plugin when launching `gwd` so it will be enabled
even if `.gwf` file does not indicate to do so.

```
gwd ... -plugins -unsafe -force /path/to/plugins
```

## Features

New template functions:
- %cousins.v1.v2; counts the number of cousins up v1 levels then down v2 levels
- %date_s; used in conjunction with an event such as %birth.date_s;.
  Will return either a single year (when available) or a set of two years
  in the "between" (yyy1..yyy2) and "or" (yyy1|yyy2) cases.
- %number_of_persons_at_level; and  %number_of_descendants_at_level; are equivalent.
- %foreach.descendant; applicable within a %foreach.descendant_level;
- %foreach.family_at_level; applicable within a %foreach.descendant_level;

Modified behaviour:
- clicking on a first_name will provide options to search for additional
  first_names (as in the case of multiple first_names).
- the surname/places command on the welcome page returns a richer page
  providing the list of individuals associated with a place.
  A button allows to construct the relationship tree between all the
  persons associated with a page.
  Another button links back to the places dictionnary for possible edits.
- the command m=DOC is an extension of the command m=SRC. It will
  accept .pdf and .html extensions (for compatibility, .txt extensions
  are also accepted). Filename may include sub_folders.

## Copyright

Plugin written by H Gouraud and A2
