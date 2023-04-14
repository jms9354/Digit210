# Python and documentation Test
```py

patterns = [
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "^-\w+?"}}]},
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "^.$"}}]},
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "^\w\w$"}}]},
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "^[a-z]+\s+[a-z]+$"}}]},
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "^.*?__{2,}.*?$"}}]},
    {"label": "NORP", "pattern": [{"TEXT": {"REGEX": "CHRISTIAN(ITY|DOM)"}}]},
    {"label": "NORP", "pattern": [{"TEXT": {"REGEX": "CHRISTIAN\s+NETWORK"}}]},
    
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "[A-Z]{2,}[A-Z][a-z]+"}}]},
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "[a-z]{2,}[A-Z][a-z]+"}}]},
    {"label": "NULL", "pattern": [{"TEXT": {"REGEX": "^.*?[a-z][A-Z].*?$"}}]},
    # ebb: Above line attempts to stop matching things like Oak IslandThe Method
    {"label": "NULL", "pattern": [{"TEXT" : {"REGEX": "^[Mm\-]+$"}}]},
    
    
    {"label": "GPE", "pattern": [{"TEXT": {"REGEX": "Babylon(ia)?"}}]},
    {"label": "NORP", "pattern": [{"TEXT": {"REGEX": "Christiani\s*ty"}}]},
    {"label": "NULL", "pattern": "Christiani"},
    {"label": "NULL", "pattern": "di"},
    {"label": "NULL", "pattern": "ORG"},
    {"label": "PERSON", "pattern": [{"TEXT": {"REGEX": "(Ludwig [Vv]an )?Beethoven"}}]},
    {"label": "ORG", "pattern": "Falangist"},
    {"label": "NORP", "pattern": "Dropa"},
    {"label": "GPE", "pattern": "Nazareth"},
    {"label": "NULL", "pattern": "Bab"},
]
ruler.add_patterns(patterns)
```

Now, here is what is happening in this code.
```py
This code is a list of patterns and labels that are used in Natural Language Processing (NLP)

In this part of the code we set up our rules for our person tagger. 
These set of rules help determine what gets grabbed by the rules we set in place.
For example "Nazareth" kept being grabbed as a person instead of as a location.
So we set rules in place to help better mark up the large collection of textfiles we are currently working with.
The same with "ORG" it grabbed "Falangist" which is a movement rather than an "Org"
Essentially "Null" is used so that any matches found for this pattern will not be tagged with a specific label.
All the labels we used such as "GPE", "PERSON","ORG", "REGEX" ETC are all used to be able to grab a specific,
kind of information and to tag it properly.

EXAMPLE:{"label": "NULL", "pattern": [{"TEXT": {"REGEX": "^-\w+?"}}]} this line of code is a pattern that matches any text,
that starts with a hyphen followed by one or more word characters such as letters,numbers or even special characters.

EXAMPLE2:  {"label": "GPE", "pattern": "Nazareth"} this pattern is a single word "Nazareth" is a city in Israel,
as i stated before kept getting,grabbed as a person rather than a location. So we added "GPE" (Geo-Political Entity) to the rules,
to correct this and properly locate and tag "Nazareth" as a location rather than person.
