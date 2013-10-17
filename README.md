 Fancybox image gallery integration into text field.
 
Requires PHP 5.2.0+, jQuery > 1.7 and Fancybox Image Gallery

Features

    Very simple configuration.
    
Usage

    Config database in config_db.php file
    Open articles_form.htm and fill the texfield of article form with text
    To include the Image Gallery into article page only type: [:gallery-id], for instance:
    ....some text [:gallery-1] ....again some text [:gallery-2] .....and again some text
    Number of gallery corresponds to the id of the gallery in database
    To look at the article page with galleries open show_article.php with id GET-parameter so:
    show_article.php?id=1
    Here given full example with articles, galleries and images
    db1.sql file contains three tables with necessary data
    Fancybox Image Gallery used to represent the galleries with images

